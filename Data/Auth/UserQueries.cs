namespace Data.Auth
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;
    using Contracts;
    using Data.Auth.Queries;

    public sealed class UserQueries :
        IQueryHandler<CreateUser, Id_User>,
        IQueryHandler<FindById, Id_User>
    {
        private readonly Handlers.CreateUser createHandler;
        private readonly Handlers.FindById findByIdHandler;

        public UserQueries(Handlers.CreateUser createHandler, Handlers.FindById findByIdHandler)
        {
            Contract.Requires<ArgumentNullException>(createHandler != null, "createHandler");
            Contract.Requires<ArgumentNullException>(findByIdHandler != null, "findByIdHandler");

            this.createHandler = createHandler;
            this.findByIdHandler = findByIdHandler;
        }

        public Task<Id_User> Handle(CreateUser query)
        {
            return createHandler.Handle(query);
        }

        public Task<Id_User> Handle(FindById query)
        {
            return findByIdHandler.Handle(query);
        }
    }
}