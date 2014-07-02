namespace App.Account
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;

    internal class UserRoleStore : IUserRoleStore<User, Guid>
    {
        private readonly Sponsorworks db;
        private readonly IUserStore<User, Guid> userStore;

        public UserRoleStore(Sponsorworks db, IUserStore<User, Guid> userStore)
        {
            Contract.Requires<ArgumentNullException>(userStore != null);
            Contract.Requires<ArgumentNullException>(db != null);
            this.db = db;
            this.userStore = userStore;
        }

        public Task AddToRoleAsync(User user, string roleName)
        {
            return Task.Run(() =>
            {
                db.RoleMembers.InsertOnSubmit(new RoleMember { Active = true, UserId = user.Id, RoleId = db.Roles.Single(r => r.Name == roleName).Id });
                db.SubmitChanges();
            });
        }

        public Task<IList<string>> GetRolesAsync(User user)
        {
            return Task.Run(() => (IList<string>)db.RoleMembers.Where(rm => rm.UserId == user.Id).Select(rm => rm.Role.Name).ToList());
        }

        public Task<bool> IsInRoleAsync(User user, string roleName)
        {
            return Task.Run(() => db.RoleMembers.Any(rm => rm.UserId == user.Id));
        }

        public Task RemoveFromRoleAsync(User user, string roleName)
        {
            return Task.Run(() =>
            {
                db.RoleMembers.DeleteOnSubmit(db.RoleMembers.Single(rm => rm.UserId == user.Id && rm.Role.Name == roleName));
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