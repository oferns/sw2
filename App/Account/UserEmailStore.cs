namespace App.Account
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;

    internal class UserEmailStore : IUserEmailStore<User, Guid>
    {
        private readonly Sponsorworks db;
        private readonly IUserStore<User, Guid> userStore;

        public UserEmailStore(Sponsorworks db, IUserStore<User, Guid> userStore)
        {
            Contract.Requires<ArgumentNullException>(userStore != null);
            Contract.Requires<ArgumentNullException>(db != null);
            this.db = db;
            this.userStore = userStore;
        }

        public Task<User> FindByEmailAsync(string email)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetEmailAsync(User user)
        {
            throw new NotImplementedException();
        }

        public Task<bool> GetEmailConfirmedAsync(User user)
        {
            throw new NotImplementedException();
        }

        public Task SetEmailAsync(User user, string email)
        {
            throw new NotImplementedException();
        }

        public Task SetEmailConfirmedAsync(User user, bool confirmed)
        {
            throw new NotImplementedException();
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