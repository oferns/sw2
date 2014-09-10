// --------------------------------------------------------------------------------------------------------------------
// <copyright file="IPagedQuery.cs" company="Sponsorworks">
//   This is a message about copyright
// </copyright>
// <summary>
//   The PagedQuery interface.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Contracts
{
    using System.Diagnostics.Contracts;

    /// <summary>
    /// The PagedQuery interface.
    /// </summary>
    /// <typeparam name="TResult">
    /// The typed result
    /// </typeparam>
    [ContractClass(typeof(PagedQueryContract<>))]
    public interface IPagedQuery<TResult> : IQuery<TResult>
    {
        /// <summary>
        /// Gets or sets the page number.
        /// </summary>
        int PageNumber { get; set; }

        /// <summary>
        /// Gets or sets the page size.
        /// </summary>
        int PageSize { get; set; }
    }
}