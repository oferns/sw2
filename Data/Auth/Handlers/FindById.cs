namespace Data.Auth.Handlers
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using Contracts;

    public sealed class FindById : IQueryHandler<Queries.FindById, Id_User>
    {
        private readonly Sponsorworks db;

        public FindById(Sponsorworks db)
        {
            Contract.Requires<ArgumentNullException>(db != null, "db");
            this.db = db;
        }

        public Task<Id_User> Handle(Queries.FindById query)
        {
            return Task.Run<Id_User>(() => db.Id_Users.FirstOrDefault(u => u.Id == query.Id));
        }
    }
}