// --------------------------------------------------------------------------------------------------------------------
// <copyright file="SendCode.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   The send code.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Contracts.Auth.Commands
{
    /// <summary>
    /// The send code.
    /// </summary>
    public class SendCode
    {
        /// <summary>
        /// Gets or sets the provider.
        /// </summary>
        public string Provider { get; set; }

        /// <summary>
        /// Gets or sets the return url.
        /// </summary>
        public string ReturnUrl { get; set; }
    }
}