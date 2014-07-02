namespace App.Account
{
    using System;
    using System.Data.Linq;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;

    internal class UserStore : IUserStore<User, Guid>
    {
        private readonly Sponsorworks db;

        public UserStore(Sponsorworks db)
        {
            Contract.Requires<ArgumentNullException>(db != null, "db");
            this.db = db;
        }

        public Task CreateAsync(User user)
        {
            return Task.Run(() =>
            {
                db.Users.InsertOnSubmit(new App.User { Id = user.Id, UserName = user.UserName });
                db.SubmitChanges(ConflictMode.FailOnFirstConflict);
            });
        }

        public Task DeleteAsync(User user)
        {
            return Task.Run(() =>
            {
                db.Users.DeleteOnSubmit(db.Users.Single(u => u.Id == user.Id));
                db.SubmitChanges(ConflictMode.FailOnFirstConflict);
            });
        }

        public Task<User> FindByIdAsync(Guid userId)
        {
            return Task.Run(() => (from u in db.Users where u.Id == userId select new User { Id = userId, UserName = u.UserName }).FirstOrDefault());
        }

        public Task<User> FindByNameAsync(string userName)
        {
            return Task.Run(() => (from u in db.Users where u.UserName == userName select new User { Id = u.Id, UserName = userName }).FirstOrDefault());
        }

        public Task UpdateAsync(User user)
        {
            return Task.Run(async () =>
            {
                var actualUser = await FindByIdAsync(user.Id);
                actualUser.UserName = user.UserName;
                db.SubmitChanges(ConflictMode.FailOnFirstConflict);
            });
        }

        public void Dispose()
        {
            db.Dispose();
        }
    }
}