namespace App.Auth
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Runtime.Remoting.Contexts;
    using System.Security.Claims;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;
    using Microsoft.Owin.Security;

    public class SignInManager : SignInManager<Id_User, Guid>
    {
        public SignInManager(UserManager<Id_User, Guid> userManager, IAuthenticationManager authenticationManager)
            : base(userManager, authenticationManager)
        {
            Contract.Requires<ArgumentNullException>(userManager != null, "userManager");
            Contract.Requires<ArgumentNullException>(authenticationManager != null, "authenticationManager");
        }

        public override Task<ClaimsIdentity> CreateUserIdentityAsync(Id_User user)
        {
            return UserManager.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie);
        }

        public static SignInManager Create(IdentityFactoryOptions<SignInManager> options, IOwinContext context)
        {
            Contract.Requires<ArgumentNullException>(options!=null,"options");
            Contract.Requires<ArgumentNullException>(context != null, "context");

            return new SignInManager(context.GetUserManager<UserManager>(), context.Authentication);
        }
    }
}