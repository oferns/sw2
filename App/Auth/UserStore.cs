namespace App.Auth
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using System.Transactions;
    using Microsoft.AspNet.Identity;

    public sealed class UserStore : IUserStore<Id_User, Guid>,
        IUserPasswordStore<Id_User, Guid>,
        IUserEmailStore<Id_User, Guid>,
        IUserSecurityStampStore<Id_User, Guid>,
        IUserLoginStore<Id_User, Guid>,
        IUserRoleStore<Id_User, Guid>,
        IUserLockoutStore<Id_User, Guid>,
        IUserTwoFactorStore<Id_User, Guid>
    {
        private readonly Sponsorworks db;

        public UserStore(Sponsorworks db)
        {
            Contract.Requires<ArgumentNullException>(db != null, "db");
            this.db = db;
        }

        #region IUserStore

        public Task CreateAsync(Id_User user)
        {
            return Task.Run(() =>
            {
                using (var transaction = new TransactionScope())
                {
                    user.Id = user.Id == Guid.Empty ? Guid.NewGuid() : user.Id;
                    db.Users.InsertOnSubmit(new User { Id = user.Id, UserName = user.UserName, Active = true });
                    db.RoleMembers.InsertOnSubmit(new RoleMember { UserId = user.Id, RoleId = user.RoleId, Active = true });
                    if (!string.IsNullOrEmpty(user.PasswordHash))
                    {
                        db.Accounts.InsertOnSubmit(new Account
                        {
                            OwnerUserId = user.Id,
                            OwnerRoleId = user.RoleId,
                            EmailAddress = user.EmailAddress,
                            EmailVerified = user.EmailVerified,
                            Active = user.Active,
                            PasswordHash = user.PasswordHash,
                            SecurityStamp = user.SecurityStamp
                        });
                    }
                    db.SubmitChanges();
                    transaction.Complete();
                }
            });
        }

        public Task DeleteAsync(Id_User user)
        {
            return Task.Run(() =>
            {
                db.Users.DeleteOnSubmit(db.Users.Single(u => u.Id == user.Id));
                db.SubmitChanges();
            });
        }

        public Task<Id_User> FindByIdAsync(Guid userId)
        {
            return Task.Run(() => db.Id_Users.FirstOrDefault(u => u.Id == userId));
        }

        public Task<Id_User> FindByNameAsync(string userName)
        {
            return Task.Run(() => db.Id_Users.FirstOrDefault(u => u.EmailAddress == userName));
        }

        public Task UpdateAsync(Id_User user)
        {
            return Task.Run(() =>
            {
                User actualUser = db.Users.Single(u => u.Id == user.Id);
                actualUser.UserName = user.UserName;
                db.SubmitChanges();
            });
        }

        public void Dispose()
        {
            db.Dispose();
        }

        #endregion

        #region IUserPasswordStore

        public Task<string> GetPasswordHashAsync(Id_User user)
        {
            return Task.FromResult(user.PasswordHash);
        }

        public Task<bool> HasPasswordAsync(Id_User user)
        {
            return Task.FromResult(string.IsNullOrEmpty(user.PasswordHash));
        }

        public Task SetPasswordHashAsync(Id_User user, string passwordHash)
        {
            return Task.FromResult((user.PasswordHash = passwordHash));
        }

        #endregion

        #region IUserEmailStore

        public Task<Id_User> FindByEmailAsync(string email)
        {
            return Task.Run(() => db.Id_Users.SingleOrDefault(e => e.EmailAddress == email));
        }

        public Task<string> GetEmailAsync(Id_User user)
        {
            return Task.FromResult(user.EmailAddress);
        }

        public Task<bool> GetEmailConfirmedAsync(Id_User user)
        {
            return Task.FromResult(user.EmailVerified);
        }

        public Task SetEmailAsync(Id_User user, string email)
        {
            return Task.Run(() =>
            {
                Account account = db.Accounts.Single(a => a.OwnerUserId == user.Id);
                account.EmailAddress = email;
                account.EmailVerified = false;
                db.SubmitChanges();
            });
        }

        public Task SetEmailConfirmedAsync(Id_User user, bool confirmed)
        {
            return Task.Run(() =>
            {
                Account Account = db.Accounts.Single(a => a.OwnerUserId == user.Id);
                Account.EmailVerified = confirmed;
                db.SubmitChanges();
            });
        }

        #endregion

        #region IUserSecurityStampStore

        public Task<string> GetSecurityStampAsync(Id_User user)
        {
            return Task.FromResult(user.SecurityStamp);
        }

        public Task SetSecurityStampAsync(Id_User user, string stamp)
        {
            return Task.FromResult((user.SecurityStamp = stamp));
        }

        #endregion

        #region IUserLoginStore

        public Task AddLoginAsync(Id_User user, UserLoginInfo login)
        {
            return Task.Run(() =>
            {
                db.ExternalAccounts.InsertOnSubmit(new ExternalAccount
                {
                    ProviderKey = login.ProviderKey,
                    ProviderName = login.LoginProvider,
                    Active = true,
                    OwnerUserId = user.Id,
                    OwnerRoleId = (byte)user.Claims.First(c => c.Type == "activeroleclaim").Value[0],
                    ProviderOwnerRoleId = (byte)(user.Claims.First(c => c.Type == "Claimtypehere").Value[0]) //TODO: This wont work
                });
                db.SubmitChanges();
            });
        }

        public Task<Id_User> FindAsync(UserLoginInfo login)
        {
            return Task.Run(async () =>
            {
                ExternalAccount user = db.ExternalAccounts.SingleOrDefault(a => a.ProviderName == login.LoginProvider && a.ProviderKey == login.ProviderKey);
                return user == null ? null : await FindByIdAsync(user.Id);
            });
        }

        public Task<IList<UserLoginInfo>> GetLoginsAsync(Id_User user)
        {
            return Task.Run(() => (IList<UserLoginInfo>)db.ExternalAccounts.Where(a => a.OwnerUserId == user.Id).Select(a => new UserLoginInfo(a.ProviderName, a.ProviderKey)).ToList());
        }

        public Task RemoveLoginAsync(Id_User user, UserLoginInfo login)
        {
            return Task.Run(() =>
            {
                db.ExternalAccounts.DeleteOnSubmit((db.ExternalAccounts.Where(a => a.OwnerUserId == user.Id && a.ProviderName == login.LoginProvider && a.ProviderKey == login.ProviderKey)).Single());
                db.SubmitChanges();
            });
        }

        #endregion

        #region IUserRoleStore

        public Task AddToRoleAsync(Id_User user, string roleName)
        {
            return Task.Run(() =>
            {
                db.RoleMembers.InsertOnSubmit(new RoleMember { Active = true, UserId = user.Id, RoleId = db.Roles.Single(r => r.Name == roleName).Id });
                db.SubmitChanges();
            });
        }

        public Task<IList<string>> GetRolesAsync(Id_User user)
        {
            return Task.Run(() => (IList<string>)db.RoleMembers.Where(rm => rm.UserId == user.Id).Select(rm => rm.Role.Name).ToList());
        }

        public Task<bool> IsInRoleAsync(Id_User user, string roleName)
        {
            return Task.Run(() => db.RoleMembers.Any(rm => rm.UserId == user.Id));
        }

        public Task RemoveFromRoleAsync(Id_User user, string roleName)
        {
            return Task.Run(() =>
            {
                db.RoleMembers.DeleteOnSubmit(db.RoleMembers.Single(rm => rm.UserId == user.Id && rm.Role.Name == roleName));
                db.SubmitChanges();
            });
        }

        #endregion

        #region IUserLockoutStore

        public Task<int> GetAccessFailedCountAsync(Id_User user)
        {
            return Task.FromResult((int)user.FailedAccessCount);
        }

        public Task<bool> GetLockoutEnabledAsync(Id_User user)
        {
            return Task.FromResult(user.LockoutEnabled);
        }

        public Task<DateTimeOffset> GetLockoutEndDateAsync(Id_User user)
        {
            return
                Task.FromResult(user.UnlockDate.HasValue
                                    ? new DateTimeOffset(DateTime.SpecifyKind(user.UnlockDate.Value, DateTimeKind.Utc))
                                    : new DateTimeOffset());
        }

        public Task<int> IncrementAccessFailedCountAsync(Id_User user)
        {
            return Task.Run(() =>
            {
                AccountLockOut lockOut = db.AccountLockOuts.SingleOrDefault(l => l.OwnerRoleId == user.RoleId && l.OwnerUserId == user.Id);

                if (lockOut == null)
                {
                    lockOut = new AccountLockOut
                    {
                        OwnerRoleId = user.RoleId,
                        OwnerUserId = user.Id,
                        FailedAccessCount = 1,
                    };
                    db.AccountLockOuts.Attach(lockOut);
                }
                else
                {
                    lockOut.FailedAccessCount++;
                }

                db.SubmitChanges();
                return (int)lockOut.FailedAccessCount;
            });
        }

        public Task ResetAccessFailedCountAsync(Id_User user)
        {
            return Task.Run(() =>
            {
                AccountLockOut lockOut = db.AccountLockOuts.Single(l => l.OwnerRoleId == user.RoleId && l.OwnerUserId == user.Id);
                lockOut.FailedAccessCount = 0;
                db.SubmitChanges();
            });
        }

        public Task SetLockoutEnabledAsync(Id_User user, bool enabled)
        {
            throw new NotImplementedException();
        }

        public Task SetLockoutEndDateAsync(Id_User user, DateTimeOffset lockoutEnd)
        {
            return Task.Run(() =>
            {
                AccountLockOut lockOut = db.AccountLockOuts.Single(l => l.OwnerRoleId == user.RoleId && l.OwnerUserId == user.Id);
                lockOut.FailedAccessCount = 0;
                db.SubmitChanges();
            });
        }

        #endregion

        #region IUserTwoFactorStore

        public Task<bool> GetTwoFactorEnabledAsync(Id_User user)
        {
            return Task.FromResult(user.TwoFactorEnabled);
        }

        public Task SetTwoFactorEnabledAsync(Id_User user, bool enabled)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}