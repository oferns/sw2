namespace App.Account
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;

    internal class UserLoginStore : IUserLoginStore<User, Guid>
    {
        private readonly Sponsorworks db;
        private readonly IUserStore<User, Guid> userStore;

        public UserLoginStore(Sponsorworks db, IUserStore<User, Guid> userStore)
        {
            Contract.Requires<ArgumentNullException>(userStore!=null);
            Contract.Requires<ArgumentNullException>(db != null);
            this.db = db;
            this.userStore = userStore;
        }

        public Task AddLoginAsync(User user, UserLoginInfo login)
        {
            throw new NotImplementedException();
        }

        public Task<User> FindAsync(UserLoginInfo login)
        {
            throw new NotImplementedException();
        }

        public Task<IList<UserLoginInfo>> GetLoginsAsync(User user)
        {
            throw new NotImplementedException();
        }

        public Task RemoveLoginAsync(User user, UserLoginInfo login)
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