// --------------------------------------------------------------------------------------------------------------------
// <copyright file="UserStore.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the UserStore type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace App.Auth
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;

    using Data;
    using Data.Auth;
    using Data.Auth.Queries;

    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;

    /// <summary>
    /// The user store.
    /// </summary>
    public sealed class UserStore : IUserStore<Id_User, Guid>, IQueryableUserStore<Id_User, Guid>, IUserPasswordStore<Id_User, Guid>, IUserEmailStore<Id_User, Guid>, IUserSecurityStampStore<Id_User, Guid>, IUserLoginStore<Id_User, Guid>, IUserRoleStore<Id_User, Guid>, IUserLockoutStore<Id_User, Guid>, IUserTwoFactorStore<Id_User, Guid>
    {
        /// <summary>
        /// The context.
        /// </summary>
        private readonly IOwinContext context;

        /// <summary>
        /// The user queries.
        /// </summary>
        private readonly UserQueries userQueries;

        /// <summary>
        /// The database.
        /// </summary>
        private readonly Sponsorworks db;

        /// <summary>
        /// The current user.
        /// </summary>
        private Id_User currentUser;

        /// <summary>
        /// Initialises a new instance of the <see cref="UserStore"/> class.
        /// </summary>
        /// <param name="options">
        /// The options.
        /// </param>
        /// <param name="context">
        /// The context.
        /// </param>
        /// <param name="userQueries">
        /// The user queries.
        /// </param>
        public UserStore(IdentityFactoryOptions<UserStore> options, IOwinContext context, UserQueries userQueries)
        {
            Contract.Requires<ArgumentNullException>(options != null, "options");
            Contract.Requires<ArgumentNullException>(context != null, "context");
            Contract.Requires<ArgumentNullException>(userQueries != null, "userQueries");

            this.context = context;
            this.userQueries = userQueries;
            this.db = context.Get<Sponsorworks>();
        }

        #region IUserStore

        /// <summary>
        /// The create async.
        /// </summary>
        /// <param name="user">
        /// The user.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public Task CreateAsync(Id_User user)
        {
            Contract.Assume(user != null, "user");
            return this.userQueries.Handle(new CreateUser { User = user });
        }

        /// <summary>
        /// The delete async.
        /// </summary>
        /// <param name="user">
        /// The user.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public Task DeleteAsync(Id_User user)
        {
            Contract.Assume(user != null, "user");
            return Task.Run(() =>
                {
                    this.db.Users.DeleteOnSubmit(this.db.Users.Single(u => u.Id == user.Id));
                    this.db.SubmitChanges();
                });
        }

        /// <summary>
        /// The find by id async.
        /// </summary>
        /// <param name="userId">
        /// The user id.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public Task<Id_User> FindByIdAsync(Guid userId)
        {
            Global.Log.TraceData(TraceEventType.Verbose, 1, "Looking for userId " + userId);
            if (this.currentUser != null && (this.currentUser.Id == userId))
            {
                Global.Log.TraceData(TraceEventType.Verbose, 1, "Found userId " + userId + "in instance field");
                return Task.FromResult(this.currentUser);
            }

            Global.Log.TraceData(TraceEventType.Verbose, 1, "Looking for userId " + userId + "in database");
            return this.userQueries.Handle(new FindById { Id = userId });
        }

        /// <summary>
        /// The find by name async.
        /// </summary>
        /// <param name="userName">
        /// The user name.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public Task<Id_User> FindByNameAsync(string userName)
        {
            Global.Log.TraceData(TraceEventType.Verbose, 1, "Looking for userName " + userName);
            return Task.Run(() =>
                {
                    if (this.currentUser != null && (this.currentUser.UserName == userName))
                    {
                        Global.Log.TraceData(TraceEventType.Verbose, 1, "Found userName " + userName + "in instance field");
                        return this.currentUser;
                    }

                    Global.Log.TraceData(TraceEventType.Verbose, 1, "Looking for userName " + userName + "in database");

                    this.currentUser = this.db.Id_Users.FirstOrDefault(u => u.EmailAddress == userName);
                    if (this.currentUser == null)
                    {
                        Global.Log.TraceData(TraceEventType.Verbose, 1, userName + " not found in database");
                    }
                    else
                    {
                        Global.Log.TraceData(TraceEventType.Verbose, 1, userName + " found in database!");
                    }

                    return this.currentUser;
                });
        }

        /// <summary>
        /// The update async.
        /// </summary>
        /// <param name="user">
        /// The user.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public Task UpdateAsync(Id_User user)
        {
            Contract.Assume(user.Id != Guid.Empty, "user");
            return Task.Run(() =>
                {
                    User actualUser = this.db.Users.Single(u => u.Id == user.Id);
                    actualUser.UserName = user.UserName;
                    this.db.SubmitChanges();
                });
        }

        public void Dispose()
        {
            this.db.Dispose();
        }

        [ContractInvariantMethod]
        private void ObjectInvariant()
        {
            Contract.Invariant(this.db != null);
        }

        #endregion

        #region IUserPasswordStore

        public Task<string> GetPasswordHashAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.PasswordHash);
        }

        public Task<bool> HasPasswordAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult(string.IsNullOrEmpty(user.PasswordHash));
        }

        public Task SetPasswordHashAsync(Id_User user, string passwordHash)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.PasswordHash = passwordHash);
        }

        #endregion

        #region IUserEmailStore

        /// <summary>
        /// The find by email async.
        /// </summary>
        /// <param name="email">
        /// The email.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public Task<Id_User> FindByEmailAsync(string email)
        {
            return Task.Run(() => this.db.Id_Users.SingleOrDefault(e => e.EmailAddress == email));
        }

        public Task<string> GetEmailAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.EmailAddress);
        }

        public Task<bool> GetEmailConfirmedAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.EmailVerified);
        }

        public Task SetEmailAsync(Id_User user, string email)
        {
            return Task.Run(() =>
                {
                    Account account = this.db.Accounts.Single(a => a.OwnerUserId == user.Id);
                    account.EmailAddress = email;
                    account.EmailVerified = false;
                    this.db.SubmitChanges();
                });
        }

        public Task SetEmailConfirmedAsync(Id_User user, bool confirmed)
        {
            return Task.Run(() =>
                {
                    Account account = this.db.Accounts.Single(a => a.OwnerUserId == user.Id);
                    account.EmailVerified = confirmed;
                    this.db.SubmitChanges();
                });
        }

        #endregion

        #region IUserSecurityStampStore

        public Task<string> GetSecurityStampAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.SecurityStamp);
        }

        public Task SetSecurityStampAsync(Id_User user, string stamp)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.SecurityStamp = stamp);
        }

        #endregion

        #region IUserLoginStore

        public Task AddLoginAsync(Id_User user, UserLoginInfo login)
        {
            return Task.Run(() =>
                {
                    this.db.ExternalAccounts.InsertOnSubmit(new ExternalAccount { ProviderKey = login.ProviderKey, ProviderName = login.LoginProvider, Active = true, OwnerUserId = user.Id, OwnerRoleId = user.RoleId, ProviderOwnerRoleId = (byte)this.context.Environment["DomainOwnerId"], ProviderOwnerUserId = Guid.Parse((string)this.context.Environment["DomainOwnerRoleId"]) });
                    this.db.SubmitChanges();
                });
        }

        public Task<Id_User> FindAsync(UserLoginInfo login)
        {
            return Task.Run(async () =>
                {
                    ExternalAccount user = this.db.ExternalAccounts.SingleOrDefault(a => a.ProviderName == login.LoginProvider && a.ProviderKey == login.ProviderKey);
                    return user == null ? null : await this.FindByIdAsync(user.Id);
                });
        }

        public Task<IList<UserLoginInfo>> GetLoginsAsync(Id_User user)
        {
            return Task.Run(() => (IList<UserLoginInfo>)this.db.ExternalAccounts.Where(a => a.OwnerUserId == user.Id).Select(a => new UserLoginInfo(a.ProviderName, a.ProviderKey)).ToList());
        }

        public Task RemoveLoginAsync(Id_User user, UserLoginInfo login)
        {
            return Task.Run(() =>
                {
                    this.db.ExternalAccounts.DeleteOnSubmit(this.db.ExternalAccounts.Where(a => a.OwnerUserId == user.Id && a.ProviderName == login.LoginProvider && a.ProviderKey == login.ProviderKey).Single());
                    this.db.SubmitChanges();
                });
        }

        #endregion

        #region IUserRoleStore

        public Task AddToRoleAsync(Id_User user, string roleName)
        {
            return Task.Run(() =>
                {
                    this.db.RoleMembers.InsertOnSubmit(new RoleMember { Active = true, UserId = user.Id, RoleId = this.db.Roles.Single(r => r.Name == roleName).Id });
                    this.db.SubmitChanges();
                });
        }

        public Task<IList<string>> GetRolesAsync(Id_User user)
        {
            return Task.Run(() => (IList<string>)this.db.RoleMembers.Where(rm => rm.UserId == user.Id).Select(rm => rm.Role.Name).ToList());
        }

        public Task<bool> IsInRoleAsync(Id_User user, string roleName)
        {
            return Task.Run(() => this.db.RoleMembers.Any(rm => rm.UserId == user.Id));
        }

        public Task RemoveFromRoleAsync(Id_User user, string roleName)
        {
            return Task.Run(() =>
                {
                    this.db.RoleMembers.DeleteOnSubmit(this.db.RoleMembers.Single(rm => rm.UserId == user.Id && rm.Role.Name == roleName));
                    this.db.SubmitChanges();
                });
        }

        #endregion

        #region IUserLockoutStore

        public Task<int> GetAccessFailedCountAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult((int)user.FailedAccessCount);
        }

        public Task<bool> GetLockoutEnabledAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.LockoutEnabled);
        }

        public Task<DateTimeOffset> GetLockoutEndDateAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.UnlockDate.HasValue ? new DateTimeOffset(DateTime.SpecifyKind(user.UnlockDate.Value, DateTimeKind.Utc)) : new DateTimeOffset());
        }

        public Task<int> IncrementAccessFailedCountAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.Run(() =>
                {
                    AccountLockOut lockOut = this.db.AccountLockOuts.SingleOrDefault(l => l.OwnerRoleId == user.RoleId && l.OwnerUserId == user.Id);

                    if (lockOut == null)
                    {
                        lockOut = new AccountLockOut { OwnerRoleId = user.RoleId, OwnerUserId = user.Id, FailedAccessCount = 1, };
                        this.db.AccountLockOuts.Attach(lockOut);
                    }
                    else
                    {
                        lockOut.FailedAccessCount++;
                    }

                    this.db.SubmitChanges();
                    return (int)lockOut.FailedAccessCount;
                });
        }

        public Task ResetAccessFailedCountAsync(Id_User user)
        {
            Contract.Assume(user != null);

            return Task.Run(() =>
                {
                    AccountLockOut lockOut = this.db.AccountLockOuts.SingleOrDefault(l => l.OwnerRoleId == user.RoleId && l.OwnerUserId == user.Id);
                    lockOut = lockOut ?? new AccountLockOut { OwnerUserId = user.Id, OwnerRoleId = user.RoleId, 
                                                              
                                                              // LockOutOwnerRoleId = user.
                                                              FailedAccessCount = 0 };
                    this.db.AccountLockOuts.Attach(lockOut);
                    this.db.SubmitChanges();
                });
        }

        public Task SetLockoutEnabledAsync(Id_User user, bool enabled)
        {
            Contract.Assume(user != null);
            return Task.Run(() => user.LockoutEnabled = enabled);
        }

        public Task SetLockoutEndDateAsync(Id_User user, DateTimeOffset lockoutEnd)
        {
            return Task.Run(() =>
                {
                    user.UnlockDate = DateTime.UtcNow.Add(lockoutEnd.Offset);

                    // AccountLockOut lockOut = db.AccountLockOuts.SingleOrDefault(l => l.OwnerRoleId == user.RoleId && l.OwnerUserId == user.Id);
                    // lockOut = lockOut ?? new AccountLockOut
                    // {
                    // OwnerRoleId = user.RoleId,
                    // OwnerUserId = user.Id,
                    // LockOutOwnerRoleId = (byte)context.Environment["DomainOwnerId"],
                    // LockOutOwnerUserId= Guid.Parse((string)context.Environment["DomainOwnerRoleId"])
                    // };
                    // lockOut.FailedAccessCount = 0;
                    // db.SubmitChanges();
                });
        }

        #endregion

        #region IUserTwoFactorStore

        public Task<bool> GetTwoFactorEnabledAsync(Id_User user)
        {
            Contract.Assume(user != null);
            return Task.FromResult(user.TwoFactorEnabled);
        }

        public Task SetTwoFactorEnabledAsync(Id_User user, bool enabled)
        {
            Contract.Assume(user != null);
            return Task.Run(() => user.TwoFactorEnabled = enabled);
        }

        #endregion

        public IQueryable<Id_User> Users
        {
            get
            {
                return this.db.Id_Users;
            }
        }
    }
}