namespace App.Account
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Linq;
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
            return Task.Run(() => (db.UserEmailAddresses.Where(e => e.EmailAddress == email).Select(e => new User
            {
                Id = e.OwnerUserId,
                UserName = e.RoleMember.User.UserName
            })).Single());
        }

        public Task<string> GetEmailAsync(User user)
        {
            return Task.Run(()=> (db.LocalAccounts.Where(e => e.OwnerUserId == user.Id).Select(e => e.EmailAddress)).Single());
        }

        public Task<bool> GetEmailConfirmedAsync(User user)
        {
            return Task.Run(() => (db.LocalAccounts.Where(e => e.OwnerUserId == user.Id).Select(e => e.EmailVerified)).Single());
        }

        public Task SetEmailAsync(User user, string email)
        {
            return Task.Run(() =>
            {
                var localAccount = (from a in db.LocalAccounts where a.OwnerUserId == user.Id select a).Single();
                localAccount.EmailAddress = email;
                localAccount.EmailVerified = false;
                db.SubmitChanges();
            });
        }

        public Task SetEmailConfirmedAsync(User user, bool confirmed)
        {
            return Task.Run(() =>
            {
                var localAccount = (from a in db.LocalAccounts where a.OwnerUserId == user.Id select a).Single();
                localAccount.EmailVerified = confirmed;
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