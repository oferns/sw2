namespace App.Account
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;

    internal class UserLoginStore : IUserLoginStore<User, Guid>
    {
        private readonly Sponsorworks db;
        private readonly IUserStore<User, Guid> userStore;

        public UserLoginStore(Sponsorworks db, IUserStore<User, Guid> userStore)
        {
            Contract.Requires<ArgumentNullException>(userStore != null);
            Contract.Requires<ArgumentNullException>(db != null);
            this.db = db;
            this.userStore = userStore;
        }

        public Task AddLoginAsync(User user, UserLoginInfo login)
        {
            return Task.Run(() =>
            {
                db.ExternalAccounts.InsertOnSubmit(new ExternalAccount
                {
                    ProviderKey = login.ProviderKey,
                    ProviderName = login.LoginProvider,
                    Active = true,
                    OwnerUserId = user.Id,
                    OwnerRoleId = (byte)user.Claims.First(c=>c.Type == "activeroleclaim" ).Value[0],
                    ProviderOwnerRoleId = (byte)(user.Claims.First(c => c.Type == "Claimtypehere").Value[0]) //TODO: This wont work
                });
                db.SubmitChanges();
            });
        }

        public Task<User> FindAsync(UserLoginInfo login)
        {
            return FindByIdAsync(db.ExternalAccounts.Single(a => a.ProviderName == login.LoginProvider && a.ProviderKey == login.ProviderKey).OwnerUserId);
        }

        public Task<IList<UserLoginInfo>> GetLoginsAsync(User user)
        {
            return Task.Run(() => (IList<UserLoginInfo>)db.ExternalAccounts.Where(a => a.OwnerUserId == user.Id).Select(a => new UserLoginInfo(a.ProviderName, a.ProviderKey)).ToList());
        }

        public Task RemoveLoginAsync(User user, UserLoginInfo login)
        {
            return Task.Run(() =>
            {
                db.ExternalAccounts.DeleteOnSubmit((db.ExternalAccounts.Where(a => a.OwnerUserId == user.Id && a.ProviderName == login.LoginProvider && a.ProviderKey == login.ProviderKey)).Single());
                db.SubmitChanges();
            });
        }

        public Task CreateAsync(User user)
        {
            return userStore.CreateAsync(user);
        }

        public Task DeleteAsync(User user)
        {
            return userStore.DeleteAsync(user);
        }

        public Task<User> FindByIdAsync(Guid userId)
        {
            return userStore.FindByIdAsync(userId);
        }

        public Task<User> FindByNameAsync(string userName)
        {
            return userStore.FindByNameAsync(userName);
        }

        public Task UpdateAsync(User user)
        {
            return userStore.UpdateAsync(user);
        }

        public void Dispose()
        {
            // this will dispose our Db instance as well I think. Poss issue here...
            userStore.Dispose();
        }
    }
}