// --------------------------------------------------------------------------------------------------------------------
// <copyright file="Login.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the Login type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Contracts.Auth.Commands
{
    using System.ComponentModel.DataAnnotations;

    /// <summary>
    /// The login.
    /// </summary>
    public class Login
    {
        /// <summary>
        /// Gets or sets the email.
        /// </summary>
        [Required]
        [Display(Name = "Email")]
        [EmailAddress]
        public string Email { get; set; }

        /// <summary>
        /// Gets or sets the password.
        /// </summary>
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether to remember me.
        /// </summary>
        [Display(Name = "Remember me?")]
        public bool RememberMe { get; set; }
    }
}