// --------------------------------------------------------------------------------------------------------------------
// <copyright file="SortedQueryContract.cs" company="Sponsorworks">
// Copyright notice
// </copyright>
// <summary>
//   The sorted query contract.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace Contracts
{
    using System;
    using System.Data.SqlClient;
    using System.Diagnostics.Contracts;

    /// <summary>
    /// The sorted query contract.
    /// </summary>
    /// <typeparam name="T">
    /// The typed result
    /// </typeparam>
    internal abstract class SortedQueryContract<T> : ISortedQuery<T>
    {
        /// <summary>
        /// Gets or sets the sort field.
        /// </summary>
        public string SortField
        {
            get
            {
                Contract.Ensures(!string.IsNullOrWhiteSpace(Contract.Result<string>()), "SortField");
                return default(string);
            }

            set
            {
                Contract.Requires<ArgumentNullException>(!string.IsNullOrWhiteSpace(value), "value");
            }
        }

        /// <summary>
        /// Gets or sets the sort order.
        /// </summary>
        public SortOrder SortOrder
        {
            get
            {
                Contract.Ensures(Contract.Result<SortOrder>() != SortOrder.Unspecified, "SortOrder");
                return SortOrder.Unspecified;
            }

            set
            {
                Contract.Requires<ArgumentOutOfRangeException>(value != SortOrder.Unspecified, "value");
            }
        }
    }
}