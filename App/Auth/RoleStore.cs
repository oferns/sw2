namespace App.Auth
{
    using System;
    using System.Data.Linq;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;

    public sealed class RoleStore : IRoleStore<Role, UInt16>
    {
        private readonly Sponsorworks db;

        public RoleStore(Sponsorworks db)
        {
            Contract.Requires<ArgumentNullException>(db != null, "db");
            this.db = db;
        }

        public Task CreateAsync(Role role)
        {
            return Task.Run(() =>
            {
                db.Roles.InsertOnSubmit(new App.Role { Id = (byte)role.Id, Name = role.Name, IsSystemRole = false });
                db.SubmitChanges(ConflictMode.FailOnFirstConflict);
            });
        }

        public Task DeleteAsync(Role role)
        {
            return Task.Run(() =>
            {
                db.Roles.DeleteOnSubmit(db.Roles.Single(r => r.Id == role.Id));
                db.SubmitChanges(ConflictMode.FailOnFirstConflict);
            });
        }

        public Task<Role> FindByIdAsync(UInt16 roleId)
        {
            return Task.Run(() => (from r in db.Roles where r.Id == (byte)roleId select new Role { Id = r.Id, Name = r.Name }).FirstOrDefault());
        }

        public Task<Role> FindByNameAsync(string roleName)
        {
            return Task.Run(() => (from r in db.Roles where r.Name == roleName select new Role { Id = r.Id, Name = r.Name }).FirstOrDefault());
        }

        public Task UpdateAsync(Role role)
        {
            return Task.Run(async () =>
            {
                Role actualRole = await FindByIdAsync(role.Id);
                actualRole.Name = role.Name;
                db.SubmitChanges(ConflictMode.FailOnFirstConflict);
            });
        }

        public void Dispose()
        {
            db.Dispose();
        }

        [ContractInvariantMethod]
        private void ObjectInvariant()
        {
            Contract.Invariant(db != null);
        }
    }
}