// --------------------------------------------------------------------------------------------------------------------
// <copyright file="VerifyCode.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the VerifyCode type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Contracts.Auth.Commands
{
    using System.ComponentModel.DataAnnotations;

    /// <summary>
    /// The verify code.
    /// </summary>
    public class VerifyCode
    {
        /// <summary>
        /// Gets or sets the provider.
        /// </summary>
        [Required]
        public string Provider { get; set; }

        /// <summary>
        /// Gets or sets the code.
        /// </summary>
        [Required]
        [Display(Name = "Code")]
        public string Code { get; set; }

        /// <summary>
        /// Gets or sets the return url.
        /// </summary>
        public string ReturnUrl { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether remember browser.
        /// </summary>
        [Display(Name = "Remember this browser?")]
        public bool RememberBrowser { get; set; }
    }
}