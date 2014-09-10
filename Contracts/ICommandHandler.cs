// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ICommandHandler.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Interface for Command Handlers.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Contracts
{
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;

    /// <summary>
    /// Interface for Command Handlers.
    /// </summary>
    /// <typeparam name="T">The command type.</typeparam>
    [ContractClass(typeof(CommandHandlerContract<>))]
    public interface ICommandHandler<in T> where T : class
    {
        /// <summary>
        /// Handles the specified command.
        /// </summary>
        /// <param name="command">The command.</param>
        /// <returns>A task.</returns>
        Task Handle(T command);
    }
}