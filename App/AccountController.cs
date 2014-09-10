// --------------------------------------------------------------------------------------------------------------------
// <copyright file="AccountController.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the AccountController type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace App
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics.Contracts;
    using System.Linq;
    using System.Threading.Tasks;
    using System.Web;
    using System.Web.Mvc;

    using App.Auth;
    using App.Auth.ViewModels;

    using Data;

    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;
    using Microsoft.Owin.Security;

    /// <summary>
    /// The account controller.
    /// </summary>
    [Authorize]
    public sealed class AccountController : BaseController
    {
        /// <summary>
        /// The owin context.
        /// </summary>
        private readonly IOwinContext context;

        /// <summary>
        /// The user manager.
        /// </summary>
        private UserManager userManager;

        private SignInManager signInManager;

        public AccountController(IOwinContext context)
        {
            Contract.Requires<ArgumentNullException>(context != null, "context");
            this.context = context;
        }

        /// <summary>
        ///  Lazy-loaded to satisfy the DI container
        /// </summary>
        internal UserManager UserManager
        {
            get
            {
                return this.userManager ?? (this.userManager = this.context.GetUserManager<UserManager>());
            }
        }

        /// <summary>
        ///  Lazy-loaded to satisfy the DI container
        /// </summary>
        internal SignInManager SignInManager
        {
            get
            {
                return this.signInManager ?? (this.signInManager = this.context.Get<SignInManager>());
            }
        }

        // GET: /Account/Login
        [AllowAnonymous]
        [HttpGet]
        public ActionResult Login(string returnUrl)
        {
            this.ViewBag.ReturnUrl = returnUrl;
            return this.View();
        }

        [HttpGet]
        public ActionResult Manage()
        {
            return this.View();
        }

        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(Login model, string returnUrl)
        {
            if (!this.ModelState.IsValid)
            {
                return View(model);
            }

            // This doen't count login failures towards lockout only two factor authentication
            // To enable password failures to trigger lockout, change to shouldLockout: true
            SignInStatus result = await this.SignInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe, shouldLockout: true);
            switch (result)
            {
                case SignInStatus.Success:
                    return this.RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return this.View("Lockout");
                case SignInStatus.RequiresVerification:
                    return this.RedirectToAction("SendCode", new { ReturnUrl = returnUrl });
                case SignInStatus.Failure:
                default:
                    this.ModelState.AddModelError(string.Empty, "Invalid login attempt.");
                    return this.View(model);
            }
        }

        /// <summary>
        /// The verify code.
        /// </summary>
        /// <param name="provider">
        /// The provider.
        /// </param>
        /// <param name="returnUrl">
        /// The return url.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        [AllowAnonymous]
        public async Task<ActionResult> VerifyCode(string provider, string returnUrl)
        {
            // Require that the user has already logged in via username/password or external login
            if (!await this.SignInManager.HasBeenVerifiedAsync())
            {
                return this.View("Error");
            }

            Id_User user = await this.UserManager.FindByIdAsync(await this.SignInManager.GetVerifiedUserIdAsync());
            if (user != null)
            {
                this.ViewBag.Status = "For DEMO purposes the current " + provider + " code is: " + await this.UserManager.GenerateTwoFactorTokenAsync(user.Id, provider);
            }

            return this.View(new VerifyCode { Provider = provider, ReturnUrl = returnUrl });
        }

        /// <summary>
        /// The verify code.
        /// </summary>
        /// <param name="model">
        /// The model.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> VerifyCode(VerifyCode model)
        {
            if (!this.ModelState.IsValid)
            {
                return View(model);
            }

            SignInStatus result = await this.SignInManager.TwoFactorSignInAsync(model.Provider, model.Code, isPersistent: false, rememberBrowser: model.RememberBrowser);
            switch (result)
            {
                case SignInStatus.Success:
                    return this.RedirectToLocal(model.ReturnUrl);
                case SignInStatus.LockedOut:
                    return this.View("Lockout");
                case SignInStatus.Failure:
                default:
                    this.ModelState.AddModelError(string.Empty, "Invalid code.");
                    return View(model);
            }
        }

        /// <summary>
        /// The register.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [AllowAnonymous]
        public ActionResult Register()
        {
            return this.View();
        }

        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(Register model)
        {
            if (this.ModelState.IsValid)
            {
                var user = new Id_User { UserName = model.Email, EmailAddress = model.Email, Active = true, RoleId = 1 };
                IdentityResult result = await this.UserManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    string code = await this.UserManager.GenerateEmailConfirmationTokenAsync(user.Id);
                    string callbackUrl = this.Url.Action("ConfirmEmail", "Account", new { userId = user.Id, code = code }, protocol: this.Request.Url.Scheme);
                    await this.UserManager.SendEmailAsync(user.Id, "Confirm your account", "Please confirm your account by clicking this link: <a href=\"" + callbackUrl + "\">link</a>");
                    this.ViewBag.Link = callbackUrl;
                    return this.View("DisplayEmail");
                }

                this.AddErrors(result);
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        // GET: /Account/ConfirmEmail
        [AllowAnonymous]
        public async Task<ActionResult> ConfirmEmail(Guid userId, string code)
        {
            if (userId == Guid.Empty || code == null)
            {
                return this.View("Error");
            }

            IdentityResult result = await this.UserManager.ConfirmEmailAsync(userId, code);
            return this.View(result.Succeeded ? "ConfirmEmail" : "Error");
        }

        /// <summary>
        /// Forgotten password.
        /// </summary>
        /// <returns>The forgotten password view</returns>
        [AllowAnonymous]
        public ActionResult ForgotPassword()
        {
            return this.View();
        }

        /// <summary>
        /// The forgot password POST action.
        /// </summary>
        /// <param name="model">
        /// The model.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ForgotPassword(ForgotPassword model)
        {
            if (this.ModelState.IsValid)
            {
                Id_User user = await this.UserManager.FindByNameAsync(model.Email);
                if (user == null || !(await this.UserManager.IsEmailConfirmedAsync(user.Id)))
                {
                    // Don't reveal that the user does not exist or is not confirmed
                    return this.RedirectToAction("ForgotPasswordConfirmation", model.Email);
                }

                string code = await this.UserManager.GeneratePasswordResetTokenAsync(user.Id);
                string callbackUrl = this.Url.Action("ResetPassword", "Account", new { userId = user.Id, code = code }, protocol: "HTTPS");
                await this.UserManager.SendEmailAsync(user.Id, "Reset Password", "Please reset your password by clicking here: <a href=\"" + callbackUrl + "\">link</a>");
                return this.RedirectToAction("ForgotPasswordConfirmation", model.Email);
            }

            // If we got this far, something failed, redisplay form
            return this.View(model);
        }

        /// <summary>
        /// The forgot password confirmation.
        /// </summary>
        /// <param name="emailAddress">The email address.</param>
        /// <returns>The forgot password confirmation</returns>
        [AllowAnonymous]
        public ActionResult ForgotPasswordConfirmation(string emailAddress)
        {
            return this.View(emailAddress);
        }

        // GET: /Account/ResetPassword
        [AllowAnonymous]
        public ActionResult ResetPassword(string code)
        {
            return code == null ? this.View("Error") : this.View();
        }

        // POST: /Account/ResetPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ResetPassword(ResetPassword model)
        {
            if (!this.ModelState.IsValid)
            {
                return View(model);
            }

            Id_User user = await this.UserManager.FindByNameAsync(model.Email);
            if (user == null)
            {
                // Don't reveal that the user does not exist
                return this.RedirectToAction("ResetPasswordConfirmation", "Account");
            }

            IdentityResult result = await this.UserManager.ResetPasswordAsync(user.Id, model.Code, model.Password);
            if (result.Succeeded)
            {
                return this.RedirectToAction("ResetPasswordConfirmation", "Account");
            }

            this.AddErrors(result);
            return this.View();
        }

        // GET: /Account/ResetPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ResetPasswordConfirmation()
        {
            return this.View();
        }

        // POST: /Account/ExternalLogin
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // Request a redirect to the external login provider
            return new ChallengeResult(provider, this.Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        // GET: /Account/SendCode
        [AllowAnonymous]
        public async Task<ActionResult> SendCode(string returnUrl)
        {
            Guid userId = await this.SignInManager.GetVerifiedUserIdAsync();
            if (userId == null)
            {
                return this.View("Error");
            }

            IList<string> userFactors = await this.UserManager.GetValidTwoFactorProvidersAsync(userId);
            List<SelectListItem> factorOptions = userFactors.Select(purpose => new SelectListItem { Text = purpose, Value = purpose }).ToList();
            return this.View(new SendCode { Providers = factorOptions, ReturnUrl = returnUrl });
        }

        // POST: /Account/SendCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SendCode(SendCode model)
        {
            if (!this.ModelState.IsValid)
            {
                return this.View();
            }

            // Generate the token and send it
            if (!await this.SignInManager.SendTwoFactorCodeAsync(model.SelectedProvider))
            {
                return this.View("Error");
            }

            return this.RedirectToAction("VerifyCode", new { Provider = model.SelectedProvider, ReturnUrl = model.ReturnUrl });
        }

        // GET: /Account/ExternalLoginCallback
        [AllowAnonymous]
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            ExternalLoginInfo loginInfo = await this.AuthenticationManager.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return this.RedirectToAction("Login");
            }

            // Sign in the user with this external login provider if the user already has a login
            SignInStatus result = await this.SignInManager.ExternalSignInAsync(loginInfo, isPersistent: false);
            switch (result)
            {
                case SignInStatus.Success:
                    return this.RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return this.View("Lockout");
                case SignInStatus.RequiresVerification:
                    return this.RedirectToAction("SendCode", new { ReturnUrl = returnUrl });
                case SignInStatus.Failure:
                default:

                    // If the user does not have an account, then prompt the user to create an account
                    this.ViewBag.ReturnUrl = returnUrl;
                    this.ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
                    return this.View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { Email = loginInfo.Email });
            }
        }

        // POST: /Account/ExternalLoginConfirmation
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmationViewModel model, string returnUrl)
        {
            if (this.User.Identity.IsAuthenticated)
            {
                return this.RedirectToAction("Account", "Manage");
            }

            if (this.ModelState.IsValid)
            {
                // Get the information about the user from the external login provider
                ExternalLoginInfo info = await this.AuthenticationManager.GetExternalLoginInfoAsync();
                if (info == null)
                {
                    return this.View("ExternalLoginFailure");
                }

                var user = new Id_User { UserName = model.Email, EmailAddress = model.Email, RoleId = 4 };
                IdentityResult result = await this.UserManager.CreateAsync(user);
                if (result.Succeeded)
                {
                    result = await this.UserManager.AddLoginAsync(user.Id, info.Login);
                    if (result.Succeeded)
                    {
                        await this.SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
                        return this.RedirectToLocal(returnUrl);
                    }
                }

                this.AddErrors(result);
            }

            this.ViewBag.ReturnUrl = returnUrl;
            return View(model);
        }

        // POST: /Account/LogOff
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            Contract.Assume(this.AuthenticationManager != null);
            this.AuthenticationManager.SignOut();
            return this.RedirectToAction("Index", "Home");
        }

        // GET: /Account/ExternalLoginFailure
        [AllowAnonymous]
        public ActionResult ExternalLoginFailure()
        {
            return this.View();
        }

        #region Helpers

        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return this.context.Authentication;
            }
        }

        private void AddErrors(IdentityResult result)
        {
            Contract.Requires<ArgumentNullException>(result != null, "result");
            foreach (string error in result.Errors)
            {
                this.ModelState.AddModelError("", error);
            }
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (this.Url.IsLocalUrl(returnUrl))
            {
                return this.Redirect(returnUrl);
            }

            return this.RedirectToAction("Index", "Home");
        }

        internal class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                this.LoginProvider = provider;
                this.RedirectUri = redirectUri;
                this.UserId = userId;
            }

            public string LoginProvider { get; set; }

            public string RedirectUri { get; set; }

            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                Contract.Assume(context != null);
                var properties = new AuthenticationProperties { RedirectUri = this.RedirectUri };
                if (this.UserId != null)
                {
                    properties.Dictionary[XsrfKey] = this.UserId;
                }

                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, this.LoginProvider);
            }
        }

        #endregion
    }
}