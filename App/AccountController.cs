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
    using System.Threading;
    using System.Threading.Tasks;
    using System.Web;
    using System.Web.Mvc;

    using App.Auth;

    using Contracts.Auth.Commands;

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
        /// The OWIN context.
        /// </summary>
        private readonly IOwinContext context;

        /// <summary>
        /// The user manager.
        /// </summary>
        private UserManager userManager;

        /// <summary>
        /// The sign in manager.
        /// </summary>
        private SignInManager signInManager;

        /// <summary>
        /// Initialises a new instance of the <see cref="AccountController"/> class.
        /// </summary>
        /// <param name="context">
        /// The OWIN context.
        /// </param>
        public AccountController(IOwinContext context)
        {
            Contract.Requires<ArgumentNullException>(context != null, "context");
            this.context = context;
        }

        /// <summary>
        /// Gets the UserManager.
        /// Lazy-loaded to satisfy the DI container
        /// </summary>
        internal UserManager UserManager
        {
            get
            {
                return this.userManager ?? (this.userManager = this.context.GetUserManager<UserManager>());
            }
        }

        /// <summary>
        ///  Gets the SignInManager.
        ///  Lazy-loaded to satisfy the DI container
        /// </summary>
        internal SignInManager SignInManager
        {
            get
            {
                return this.signInManager ?? (this.signInManager = this.context.Get<SignInManager>());
            }
        }

        /// <summary>
        /// The Index page.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [HttpGet]
        public ActionResult Index()
        {
            if (!User.Identity.IsAuthenticated)
            {
                return this.RedirectToAction("Login", "Account");
            }

            return this.View();
        }

        #region Login Actions
        /// <summary>
        /// The login.
        /// </summary>
        /// <param name="returnUrl">
        /// The return url.
        /// </param>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [AllowAnonymous]
        [HttpGet]
        public ActionResult Login(string returnUrl)
        {
            this.ViewBag.ReturnUrl = returnUrl;
            this.ViewBag.ExternalProviders = this.context.Authentication.GetExternalAuthenticationTypes();

            return this.User.Identity.IsAuthenticated ? Global.RedirectToLocal(this.Request, returnUrl) : this.View();
        }

        /// <summary>
        /// The login form.
        /// </summary>
        /// <param name="model">
        /// The model.
        /// </param>
        /// <param name="returnUrl">
        /// The return url.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(Login model, string returnUrl)
        {
            if (!this.ModelState.IsValid)
            {
                return this.View(model);
            }

            SignInStatus result = await this.SignInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe, shouldLockout: false);

            switch (result)
            {
                case SignInStatus.Success:
                    return this.Request.IsAjaxRequest() ? this.RedirectToAction("LoggedIn", "Account") : Global.RedirectToLocal(this.Request, returnUrl);
                case SignInStatus.LockedOut:
                    return this.View("Lockout");
                case SignInStatus.RequiresVerification:
                    return this.RedirectToAction("SendCode", new { ReturnUrl = returnUrl });
                case SignInStatus.Failure:
                default:
                    this.ModelState.AddModelError(string.Empty, "Invalid login attempt.");
                    this.ViewBag.ExternalProviders = this.context.Authentication.GetExternalAuthenticationTypes();
                    model.Password = string.Empty;
                    return this.View(model);
            }
        }

        /// <summary>
        /// The logged in.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        public ActionResult LoggedIn()
        {
            return this.View();
        }
        #endregion

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

            return this.View(new Contracts.Auth.Commands.VerifyCode { Provider = provider, ReturnUrl = returnUrl });
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
                    return Global.RedirectToLocal(this.Request, model.ReturnUrl);
                case SignInStatus.LockedOut:
                    return this.View("Lockout");
                case SignInStatus.Failure:
                default:
                    this.ModelState.AddModelError(string.Empty, "Invalid code.");
                    return this.View(model);
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
            Thread.Sleep(5000);
            return this.View();
        }

        /// <summary>
        /// The register.
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

                foreach (string error in result.Errors)
                {
                    this.ModelState.AddModelError(string.Empty, error);
                }
            }

            // If we got this far, something failed, redisplay form
            return this.View(model);
        }

        /// <summary>
        /// The confirm email.
        /// </summary>
        /// <param name="userId">
        /// The user id.
        /// </param>
        /// <param name="code">
        /// The code.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        [AllowAnonymous]
        public async Task<ActionResult> ConfirmEmail(Guid userId, string code)
        {
            if (userId == Guid.Empty || string.IsNullOrEmpty(code))
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
                    return this.RedirectToAction("ForgotPasswordConfirmation", "Account", model.Email);
                }

                string code = await this.UserManager.GeneratePasswordResetTokenAsync(user.Id);
                string callbackUrl = this.Url.Action("ResetPassword", "Account", new { userId = user.Id, code = code }, protocol: "HTTPS");
                await this.UserManager.SendEmailAsync(user.Id, "Reset Password", "Please reset your password by clicking here: <a href=\"" + callbackUrl + "\">link</a>");
                return this.RedirectToAction("ForgotPasswordConfirmation", "Account", model.Email);
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

        /// <summary>
        /// The reset password.
        /// </summary>
        /// <param name="code">
        /// The code.
        /// </param>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [AllowAnonymous]
        public ActionResult ResetPassword(string code)
        {
            return code == null ? this.View("Error") : this.View();
        }

        /// <summary>
        /// The reset password.
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

            foreach (string error in result.Errors)
            {
                this.ModelState.AddModelError(string.Empty, error);
            }

            return this.View();
        }

        /// <summary>
        /// The reset password confirmation.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [AllowAnonymous]
        public ActionResult ResetPasswordConfirmation()
        {
            return this.View();
        }

        /// <summary>
        /// The external login.
        /// </summary>
        /// <param name="provider">
        /// The provider.
        /// </param>
        /// <param name="returnUrl">
        /// The return url.
        /// </param>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // Request a redirect to the external login provider
            return new ChallengeResult(provider, this.Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        /// <summary>
        /// The send code.
        /// </summary>
        /// <param name="returnUrl">
        /// The return url.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        [AllowAnonymous]
        public async Task<ActionResult> SendCode(string returnUrl)
        {
            Guid userId = await this.SignInManager.GetVerifiedUserIdAsync();
            if (userId == Guid.Empty)
            {
                return this.View("Error");
            }

            IList<string> userFactors = await this.UserManager.GetValidTwoFactorProvidersAsync(userId);
            this.ViewBag.Providers = userFactors.Select(purpose => new SelectListItem { Text = purpose, Value = purpose }).ToList();
            return this.View(new SendCode { ReturnUrl = returnUrl });
        }

        /// <summary>
        /// The send code.
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
        public async Task<ActionResult> SendCode(SendCode model)
        {
            if (!this.ModelState.IsValid)
            {
                return this.View();
            }

            // Generate the token and send it
            if (!await this.SignInManager.SendTwoFactorCodeAsync(model.Provider))
            {
                return this.View("Error");
            }

            return this.RedirectToAction("VerifyCode", new { Provider = model.Provider, ReturnUrl = model.ReturnUrl });
        }

        /// <summary>
        /// The external login callback.
        /// </summary>
        /// <param name="returnUrl">
        /// The return url.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        [AllowAnonymous]
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            ExternalLoginInfo loginInfo = await this.context.Authentication.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return this.RedirectToAction("Login");
            }

            // Sign in the user with this external login provider if the user already has a login
            SignInStatus result = await this.SignInManager.ExternalSignInAsync(loginInfo, isPersistent: false);
            switch (result)
            {
                case SignInStatus.Success:
                    return Global.RedirectToLocal(this.Request, returnUrl);
                case SignInStatus.LockedOut:
                    return this.View("Lockout");
                case SignInStatus.RequiresVerification:
                    return this.RedirectToAction("SendCode", new { ReturnUrl = returnUrl });
                case SignInStatus.Failure:
                default:

                    // If the user does not have an account, then prompt the user to create an account
                    this.ViewBag.ReturnUrl = returnUrl;
                    this.ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
                    return this.View("ExternalLoginConfirmation", loginInfo.Email);
            }
        }

        /// <summary>
        /// The external login confirmation.
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
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmation model)
        {
            if (this.User.Identity.IsAuthenticated)
            {
                return this.RedirectToAction("Index", "Account");
            }

            if (this.ModelState.IsValid)
            {
                // Get the information about the user from the external login provider
                ExternalLoginInfo info = await this.context.Authentication.GetExternalLoginInfoAsync();
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
                        return Global.RedirectToLocal(this.Request, model.ReturnUrl);
                    }
                }

                foreach (string error in result.Errors)
                {
                    this.ModelState.AddModelError(string.Empty, error);
                }
            }

            return this.View(model);
        }

        /// <summary>
        /// The log off.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            Contract.Assume(this.context.Authentication != null);
            this.context.Authentication.SignOut();
            return this.RedirectToAction("Index", "Home");
        }

        /// <summary>
        /// The external login failure.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [AllowAnonymous]
        public ActionResult ExternalLoginFailure()
        {
            return this.View();
        }
    }
}