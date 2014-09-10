// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ISortedQuery.cs" company="Sponsorworks">
//   This is a message about copyright
// </copyright>
// <summary>
//   The SortedQuery interface.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace Contracts
{
    using System.Data.SqlClient;
    using System.Diagnostics.Contracts;

    /// <summary>
    /// The SortedQuery interface.
    /// </summary>
    /// <typeparam name="TResult">
    ///  The typed result
    /// </typeparam>
    [ContractClass(typeof(SortedQueryContract<>))]
    public interface ISortedQuery<TResult> : IQuery<TResult>
    {
        /// <summary>
        /// Gets or sets the sort field.
        /// </summary>
        string SortField { get; set; }

        /// <summary>
        /// Gets or sets the sort order.
        /// </summary>
        SortOrder SortOrder { get; set; }
    }
}