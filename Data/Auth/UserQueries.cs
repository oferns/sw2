// --------------------------------------------------------------------------------------------------------------------
// <copyright file="UserQueries.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the UserQueries type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace Data.Auth
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;

    using Contracts;

    using Data.Auth.Queries;

    /// <summary>
    /// The user queries.
    /// </summary>
    public sealed class UserQueries : IQueryHandler<CreateUser, Id_User>, IQueryHandler<FindById, Id_User>
    {
        /// <summary>
        /// The create handler.
        /// </summary>
        private readonly Handlers.CreateUser createHandler;

        /// <summary>
        /// The find by id handler.
        /// </summary>
        private readonly Handlers.FindById findByIdHandler;

        /// <summary>
        /// Initialises a new instance of the <see cref="UserQueries"/> class.
        /// </summary>
        /// <param name="createHandler">
        /// The create handler.
        /// </param>
        /// <param name="findByIdHandler">
        /// The find by id handler.
        /// </param>
        public UserQueries(Handlers.CreateUser createHandler, Handlers.FindById findByIdHandler)
        {
            Contract.Requires<ArgumentNullException>(createHandler != null, "createHandler");
            Contract.Requires<ArgumentNullException>(findByIdHandler != null, "findByIdHandler");

            this.createHandler = createHandler;
            this.findByIdHandler = findByIdHandler;
        }

        /// <summary>
        /// The handle.
        /// </summary>
        /// <param name="query">
        /// The query.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public Task<Id_User> Handle(CreateUser query)
        {
            return this.createHandler.Handle(query);
        }

        /// <summary>
        /// The handle.
        /// </summary>
        /// <param name="query">
        /// The query.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public Task<Id_User> Handle(FindById query)
        {
            return this.findByIdHandler.Handle(query);
        }
    }
}