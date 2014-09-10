// --------------------------------------------------------------------------------------------------------------------
// <copyright file="PagedQueryContract.cs" company="Sponsorworks">
//   This is a message about copyright
// </copyright>
// <summary>
//   Defines the PagedQueryContract type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace Contracts
{
    using System;
    using System.Diagnostics.Contracts;

    /// <summary>
    /// The paged query contract.
    /// </summary>
    /// <typeparam name="T">
    /// The typed result
    /// </typeparam>
    [ContractClassFor(typeof(IPagedQuery<>))]
    internal abstract class PagedQueryContract<T> : IPagedQuery<T>
    {
        /// <summary>
        /// Gets or sets the page number. Contract ensures you cannot set or get a value lower than 1.
        /// </summary>
        public int PageNumber
        {
            get
            {
                Contract.Ensures(Contract.Result<int>() > 0);
                return 1;
            }

            set
            {
                Contract.Requires<ArgumentOutOfRangeException>(value < 1);
            }
        }

        /// <summary>
        /// Gets or sets the page size. Contract ensures you cannot set or get a value lower than 1.
        /// </summary>
        public int PageSize
        {
            get
            {
                Contract.Ensures(Contract.Result<int>() > 0);
                return 1;
            }

            set
            {
                Contract.Requires<ArgumentOutOfRangeException>(value < 1);
            }
        }
    }
}