namespace App.Account
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;

    internal class UserPasswordStore : IUserPasswordStore<User, Guid>
    {
        private readonly Sponsorworks db;
        private readonly IUserStore<User, Guid> userStore;

        public UserPasswordStore(Sponsorworks db, IUserStore<User, Guid> userStore)
        {
            Contract.Requires<ArgumentNullException>(userStore != null);
            Contract.Requires<ArgumentNullException>(db != null);
            this.db = db;
            this.userStore = userStore;
        }

        public Task<string> GetPasswordHashAsync(User user)
        {
            return Task.Run(() => db.LocalAccounts.Where(la => la.OwnerUserId == user.Id).Select(la => la.Password).FirstOrDefault());
        }

        public Task<bool> HasPasswordAsync(User user)
        {
            return Task.Run(() => db.LocalAccounts.Where(la => la.OwnerUserId == user.Id).Select(la => la.Password).Any());
        }

        public Task SetPasswordHashAsync(User user, string passwordHash)
        {
            return Task.Run(() =>
            {
                var localUserAccount = db.LocalAccounts.Single(la => la.OwnerUserId == user.Id);
                localUserAccount.Password = passwordHash;
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