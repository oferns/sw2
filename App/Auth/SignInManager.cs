// --------------------------------------------------------------------------------------------------------------------
// <copyright file="SignInManager.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the SignInManager type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace App.Auth
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Security.Claims;
    using System.Threading;
    using System.Threading.Tasks;
    using Data;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;

    /// <summary>
    /// The sign in manager.
    /// </summary>
    public class SignInManager : SignInManager<Id_User, Guid>
    {
        /// <summary>
        /// The options.
        /// </summary>
        private readonly IdentityFactoryOptions<SignInManager> options;

        /// <summary>
        /// The context.
        /// </summary>
        private readonly IOwinContext context;

        /// <summary>
        /// Initialises a new instance of the <see cref="SignInManager"/> class.
        /// </summary>
        /// <param name="options">
        /// The options.
        /// </param>
        /// <param name="context">
        /// The context.
        /// </param>
        public SignInManager(IdentityFactoryOptions<SignInManager> options, IOwinContext context)
            : base(context.Get<UserManager>(), context.Authentication)
        {
            Contract.Requires<ArgumentNullException>(options != null, "options");
            Contract.Requires<ArgumentNullException>(context != null, "context");
            this.options = options;
            this.context = context;
        }

        /// <summary>
        /// The create user identity async.
        /// </summary>
        /// <param name="user">
        /// The user.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public override Task<ClaimsIdentity> CreateUserIdentityAsync(Id_User user)
        {
            Contract.Assume(base.UserManager != null);
            return UserManager.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie);
        }

        /// <summary>
        /// The sign in async.
        /// </summary>
        /// <param name="user">
        /// The user.
        /// </param>
        /// <param name="isPersistent">
        /// The is persistent.
        /// </param>
        /// <param name="rememberBrowser">
        /// The remember browser.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public override Task SignInAsync(Id_User user, bool isPersistent, bool rememberBrowser)
        {
            var res = base.SignInAsync(user, isPersistent, rememberBrowser);
            var cid = ClaimsPrincipal.Current;
            var tid = Thread.CurrentPrincipal;            
            return res;
        }

        /// <summary>
        /// The password sign in async.
        /// </summary>
        /// <param name="userName">
        /// The user name.
        /// </param>
        /// <param name="password">
        /// The password.
        /// </param>
        /// <param name="isPersistent">
        /// The is persistent.
        /// </param>
        /// <param name="shouldLockout">
        /// The should lockout.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public override Task<SignInStatus> PasswordSignInAsync(string userName, string password, bool isPersistent, bool shouldLockout)
        {
            return base.PasswordSignInAsync(userName, password, isPersistent, shouldLockout);
        }        
    }
}