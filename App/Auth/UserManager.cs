namespace App.Auth
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;
    using Data;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;
    using Microsoft.Owin.Security.DataProtection;

    public sealed class UserManager : UserManager<Id_User, Guid>
    {
        private readonly IdentityFactoryOptions<UserManager> options;
        private readonly IOwinContext context;

        public UserManager(IdentityFactoryOptions<UserManager> options, IOwinContext context)
            : base(context.Get<UserStore>())
        {
            Contract.Requires<ArgumentNullException>(options!=null,"options");
            Contract.Requires<ArgumentNullException>(context != null, "context");
            this.options = options;
            this.context = context;
            
            this.UserValidator = new UserValidator<Id_User, Guid>(this)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = true
            };

            this.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 6,
                RequireNonLetterOrDigit = true,
                RequireDigit = true,
                RequireLowercase = true,
                RequireUppercase = true,
            };

            IDataProtectionProvider dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                this.UserTokenProvider = new DataProtectorTokenProvider<Id_User, Guid>(dataProtectionProvider.Create("SWORKS Identity"));
            }

            this.EmailService = new EmailService();

        }
        
        public override Task<IList<string>> GetValidTwoFactorProvidersAsync(Guid userId)
        {
            return base.GetValidTwoFactorProvidersAsync(userId);
        }

        public override Task<IdentityResult> ResetAccessFailedCountAsync(Guid userId)
        {
            return Task.Run(() =>
            {
                var store = context.Get<IUserLockoutStore<Id_User, Guid>>();
                store.ResetAccessFailedCountAsync(new Id_User { Id = userId });
                return IdentityResult.Success;
            });


        }

        public override Task<Id_User> FindByIdAsync(Guid userId)
        {
            return base.FindByIdAsync(userId);
        }
    }

    public class EmailService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Plug in your email service here to send an email.
            return Task.FromResult(0);
        }
    }

    public class SmsService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Plug in your sms service here to send a text message.
            return Task.FromResult(0);
        }
    }
}