namespace Data.Auth.Handlers
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;
    using Contracts;

    public sealed class CreateUser : IQueryHandler<Queries.CreateUser, Id_User>
    {
        private readonly Sponsorworks db;

        public CreateUser(Sponsorworks db)
        {
            Contract.Requires<ArgumentNullException>(db != null, "db");
            this.db = db;
        }

        public Task<Id_User> Handle(Queries.CreateUser query)
        {
            Id_User user = query.User;
            return Task.Run(() =>
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
                return user;
            });
        }
    }
}