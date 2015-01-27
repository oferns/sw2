// --------------------------------------------------------------------------------------------------------------------
// <copyright file="FindById.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the FindById type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Data.Auth.Handlers
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using Contracts;

    /// <summary>
    /// The find by id.
    /// </summary>
    public sealed class FindById : IQueryHandler<Queries.FindById, Id_User>
    {
        /// <summary>
        /// The database.
        /// </summary>
        private readonly Sponsorworks database;

        /// <summary>
        /// Initialises a new instance of the <see cref="FindById"/> class.
        /// </summary>
        /// <param name="database">
        /// The database.
        /// </param>
        public FindById(Sponsorworks database)
        {
            Contract.Requires<ArgumentNullException>(database != null, "db");
            this.database = database;
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
        public Task<Id_User> Handle(Queries.FindById query)
        {
            return Task.Run<Id_User>(() => this.database.Id_Users.FirstOrDefault(u => u.Id == query.Id));
        }
    }
}