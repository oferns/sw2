namespace App.Auth
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Security.Claims;
    using System.Threading.Tasks;
    using Data;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;

    public class SignInManager : SignInManager<Id_User, Guid>
    {
        private readonly IdentityFactoryOptions<SignInManager> options;
        private readonly IOwinContext context;

        public SignInManager(IdentityFactoryOptions<SignInManager> options, IOwinContext context)
            : base(context.Get<UserManager>(), context.Authentication)
        {
            Contract.Requires<ArgumentNullException>(options != null, "options");
            Contract.Requires<ArgumentNullException>(context != null, "context");
            this.options = options;
            this.context = context;
        }

        public override Task<ClaimsIdentity> CreateUserIdentityAsync(Id_User user)
        {
            Contract.Assume(UserManager != null);
            return UserManager.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie);
        }

        public override Task SignInAsync(Id_User user, bool isPersistent, bool rememberBrowser)
        {
            return base.SignInAsync(user, isPersistent, rememberBrowser);
        }

        public override Task<SignInStatus> PasswordSignInAsync(string userName, string password, bool isPersistent, bool shouldLockout)
        {
            return base.PasswordSignInAsync(userName, password, isPersistent, shouldLockout);
        }        
    }
}