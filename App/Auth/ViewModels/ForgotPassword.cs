namespace App.Auth.ViewModels
{
    using System.ComponentModel.DataAnnotations;

    public class ForgotPassword
    {
        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }
    }
}