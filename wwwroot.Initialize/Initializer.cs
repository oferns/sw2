namespace wwwroot.Initialize
{
    using System;
    using System.Configuration;
    using System.Diagnostics;
    using System.Globalization;
    using System.Web.Mvc;
    using System.Web.Optimization;
    using App;
    using App.Auth;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;
    using Microsoft.Owin.Security.Cookies;
    using Microsoft.Owin.Security.Google;
    using Owin;

    public class Initializer
    {
        internal static TraceSource Log = new TraceSource("App");

        internal static TraceSource SqlLog = new TraceSource("App.Sql");

        /// <summary>
        /// This method is called by OWIN. OWIN deals with the authentication on the site
        /// It is called by way of an assembly attribute in this project's properties/AssemblyInfo.cs
        /// [assembly: OwinStartup(typeof(Initializer), "Configuration")]
        /// </summary>
        /// <param name="app">app</param>
        public static void Configuration(IAppBuilder app)
        {
            // This is like DI for Authentication. The Account Controller recieves these.
            app.CreatePerOwinContext(() => new Sponsorworks(ConfigurationManager.ConnectionStrings["Sponsorworks"].ConnectionString) { Log = new ActionTextWriter(sql => SqlLog.TraceData(TraceEventType.Verbose, 0, sql)) });
            app.CreatePerOwinContext<UserStore>(((options, context) => new UserStore(context.Get<Sponsorworks>())));
            app.CreatePerOwinContext<RoleStore>(((options, context) => new RoleStore(context.Get<Sponsorworks>())));
            app.CreatePerOwinContext<UserManager>(UserManager.Create);
            app.CreatePerOwinContext<RoleManager>(((options, context) => new RoleManager(context.Get<RoleStore>())));
            app.CreatePerOwinContext<SignInManager>(((options, context) => new SignInManager(context.Get<UserManager>(), context.Authentication)));

            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Account/Login"),
                Provider = new CookieAuthenticationProvider
                {
                    OnResponseSignIn = context => Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "{0} logged in with {1}", context.Identity.Name, context.AuthenticationType)),
                    OnValidateIdentity = SecurityStampValidator.OnValidateIdentity<UserManager, Id_User, Guid>(
                                                                                                               TimeSpan.FromMinutes(30),
                                                                                                               (manager, user) => manager.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie),
                                                                                                               identity => Guid.Parse(identity.GetUserId()))
                                                                                                               
                },
                CookieHttpOnly = true,
                CookieSecure = CookieSecureOption.Always,
                CookieName = "SWORKS",
                // AuthenticationMode = AuthenticationMode.Active
            });

            app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);

            app.UseGoogleAuthentication(new GoogleOAuth2AuthenticationOptions()
            {
                ClientId = "554345000289-9b419bpr83t0tkrp6h1hqir30ipc57uv.apps.googleusercontent.com",
                ClientSecret = "AK9FnPGBQXqiixA_8_5RJpgE"
            });

        }

        /// <summary>
        /// This method is called before any of the code in the main assembly (App).
        /// Before Init, Application_Start etc
        /// It is called by way of an assembly attribute in this project's properties/AssemblyInfo.cs 
        /// [assembly: PreApplicationStartMethod(typeof(Initializer), "Initialize")]
        /// </summary>
        public static void Initialize()
        {
            // Lets get rid of view engines we are not using
            ViewEngines.Engines.Clear();

            // and add the one we want
            ViewEngines.Engines.Add(new RazorViewEngine
            {
                // Look in ControllerName/, then / for a layout view 
                AreaMasterLocationFormats = new[] { "~/a{2}/c{1}/{0}.cshtml", "~/a{2}/{0}.cshtml" },
                AreaViewLocationFormats = new[] { "~/a{2}/c{1}/{0}.cshtml", "~/a{2}/{0}.cshtml", "~/a{2}/Shared/{0}.cshtml" },
                AreaPartialViewLocationFormats = new[] { "~/a{2}/c{1}/{0}.cshtml", "~/a{2}/{0}.cshtml", "~/a{2}/Shared/{0}.cshtml" },
                MasterLocationFormats = new[] { "~/c{1}/{0}.cshtml", "~/Shared/{0}.cshtml" },
                ViewLocationFormats = new[] { "~/c{1}/{0}.cshtml", "~/Shared/{0}.cshtml" },
                PartialViewLocationFormats = new[] { "~/c{1}/{0}.cshtml", "~/Shared/{0}.cshtml" },
                FileExtensions = new[] { "cshtml" }
            });

            // Enforce HTTPS everywhere
            GlobalFilters.Filters.Add(new RequireHttpsAttribute());
            GlobalFilters.Filters.Add(new AuthorizeAttribute());

            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                                                                                 "~/Scripts/jquery-{version}.js"));

            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                                                                                    "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                                                                                    "~/Scripts/modernizr-*"));

            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                                                                                    "~/Scripts/bootstrap.js",
                                                                                    "~/Scripts/respond.js"));

            BundleTable.Bundles.Add(new StyleBundle("~/Content/css").Include(
                                                                             "~/Content/bootstrap.css",
                                                                             "~/Content/site.css"));

            // Set EnableOptimizations to false for debugging. For more information,
            // visit http://go.microsoft.com/fwlink/?LinkId=301862
            BundleTable.EnableOptimizations = false;
        }
    }
}