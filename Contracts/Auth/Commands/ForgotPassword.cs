// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ForgotPassword.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the ForgotPassword type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Contracts.Auth.Commands
{
    using System.ComponentModel.DataAnnotations;

    /// <summary>
    /// The forgot password.
    /// </summary>
    public class ForgotPassword
    {
        /// <summary>
        /// Gets or sets the email.
        /// </summary>
        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }
    }
}