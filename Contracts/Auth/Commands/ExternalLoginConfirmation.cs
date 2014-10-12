// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ExternalLoginConfirmation.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the ExternalLoginConfirmation type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace Contracts.Auth.Commands
{
    /// <summary>
    /// The external login confirmation.
    /// </summary>
    public class ExternalLoginConfirmation
    {
        /// <summary>
        /// Gets or sets the email.
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// Gets or sets the return url.
        /// </summary>
        public string ReturnUrl { get; set; }
    }
}