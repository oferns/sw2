// --------------------------------------------------------------------------------------------------------------------
// <copyright file="CommandHandlerContract.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Contract class for the ICommandHandler interface.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Contracts
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;

    /// <summary>
    /// Contract class for the ICommandHandler interface.
    /// </summary>
    /// <typeparam name="T">The command type.</typeparam>
    [ContractClassFor(typeof(ICommandHandler<>))]
    internal abstract class CommandHandlerContract<T> : ICommandHandler<T>
        where T : class
    {
        /// <summary>
        /// Handles the specified command.
        /// </summary>
        /// <param name="command">The command.</param>
        /// <returns>A task</returns>
        public Task Handle(T command)
        {
            Contract.Requires<ArgumentNullException>(command != null, "command");
            return Task.FromResult(0);
        }
    }
}