// --------------------------------------------------------------------------------------------------------------------
// <copyright file="Initializer.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   The initializer.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace Web.Initialize
{
    using System;
    using System.Configuration;
    using System.Diagnostics;
    using System.Diagnostics.Contracts;
    using System.Web;
    using System.Web.Mvc;
    using System.Web.Optimization;
    using System.Web.Routing;

    using App;
    using App.Auth;

    using Common.Owin;

    using Contracts;

    using Data;
    using Data.Auth;

    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;
    using Microsoft.Owin.Security.Cookies;

    using Owin;

    using SimpleInjector;
    using SimpleInjector.Advanced;
    using SimpleInjector.Extensions;
    using SimpleInjector.Integration.Web.Mvc;

    /// <summary>
    /// The initializer.
    /// </summary>
    public class Initializer
    {
        /// <summary>
        /// The log.
        /// </summary>
        private static TraceSource log;

        /// <summary>
        /// Gets the log.
        /// </summary>
        internal static TraceSource Log
        {
            get
            {
                return log ?? (log = new TraceSource("App"));
            }
        }

        /// <summary>
        /// This method is called by OWIN. OWIN deals with the authentication on the site
        /// It is called by way of an assembly attribute in this project's properties/AssemblyInfo.cs
        /// [assembly: OwinStartup(typeof(Initializer), "Configuration")]
        /// </summary>
        /// <param name="app">The app</param>
        public void Configuration(IAppBuilder app)
        {
            Log.TraceInformation("OWIN Configuration beginning");

            // Set up the IoC Container
            var container = new Container();

            // Register the Linq2Sql database 
            container.Register(() => new Sponsorworks(ConfigurationManager.ConnectionStrings["Sponsorworks"].ConnectionString));

            // register the IOwinContext for the Account controller
            container.RegisterPerWebRequest<IOwinContext>(() => container.IsVerifying() ? new MockOwinContext() : HttpContext.Current.GetOwinContext());

            // Register All controllers in the Assembly
            container.RegisterMvcControllers(typeof(Global).Assembly);

            // Allow filter registrations
            container.RegisterMvcIntegratedFilterProvider();

            // Register the queries 
            container.RegisterManyForOpenGeneric(typeof(IQueryHandler<,>), typeof(IQueryHandler<,>).Assembly);

            // Verify the container to ensure no errors
            container.Verify();

            // Set the MVC Dependency resolver to the IoC Resolver
            DependencyResolver.SetResolver(new SimpleInjectorDependencyResolver(container));

            // This is like DI for Authentication. The Account Controller recieves these.
            app.CreatePerOwinContext<Sponsorworks>(container.GetInstance<Sponsorworks>);
            app.CreatePerOwinContext<UserStore>((options, context) => new UserStore(options, context, container.GetInstance<UserQueries>()));
            app.CreatePerOwinContext<RoleStore>((options, context) => new RoleStore(options, context, context.Get<Sponsorworks>()));
            app.CreatePerOwinContext<UserManager>((options, context) => new UserManager(options, context));
            app.CreatePerOwinContext<RoleManager>((options, context) => new RoleManager(options, context, context.Get<RoleStore>()));
            app.CreatePerOwinContext<SignInManager>((options, context) => new SignInManager(options, context));

            app.UseCookieAuthentication(new CookieAuthenticationOptions 
            { 
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie, LoginPath = new PathString("/Account/Login"), Provider = new CookieAuthenticationProvider { // OnResponseSignIn = context => Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "{0} logging in with {1}", context.Identity.Name, context.AuthenticationType)),
                                                                                                                                                                                                                                           // OnApplyRedirect = context => Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "{0} redirected to {1}", context.OwinContext.Authentication.User, context.RedirectUri)),
                                                                                                                                                                                                                                           // OnException = context => Log.TraceData(TraceEventType.Error, 0, string.Format(CultureInfo.InvariantCulture, "{0} Cookie Exception: {1}", context.OwinContext.Authentication.User, context.Exception)),
                                                                                                                                                                                                                                           // OnResponseSignedIn = context => Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "{0} logged in with {1}", context.Identity.Name, context.AuthenticationType)),
                                                                                                                                                                                                                                           // OnResponseSignOut = context => Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "{0} logged out with {1}", context.OwinContext.Authentication.User, context.CookieOptions.Expires)),
                                                                                                                                                                                                                                           OnValidateIdentity = SecurityStampValidator.OnValidateIdentity<UserManager, Id_User, Guid>(TimeSpan.FromMinutes(30), (manager, user) => manager.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie), identity => Guid.Parse(identity.GetUserId())), }, 
                                                                          CookieHttpOnly = true, CookieSecure = CookieSecureOption.Always, CookieName = "SWORKS", 
                                                                          // AuthenticationMode = AuthenticationMode.Active
                                                                        });

            app.UseGoogleAuthentication("554345000289-9b419bpr83t0tkrp6h1hqir30ipc57uv.apps.googleusercontent.com", "AK9FnPGBQXqiixA_8_5RJpgE");
            app.UseFacebookAuthentication("585022628273869", "14a596a1ef3ef3956a88d4e3e6a3e6a5");

            // app.UseMicrosoftAccountAuthentication();
            app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);
        }

        /// <summary>
        /// This method is called before any of the code in the main assembly (App).
        /// Before Init, Application_Start etc
        /// It is called by way of an assembly attribute in this project's properties/AssemblyInfo.cs 
        /// [assembly: PreApplicationStartMethod(typeof(Initializer), "Initialize")]
        /// </summary>
        public static void Initialize()
        {
            // Contracts 
            Contract.Assume(ViewEngines.Engines != null);
            Contract.Assume(GlobalFilters.Filters != null);
            Contract.Assume(BundleTable.Bundles != null);

            // Lets get rid of view engines we are not using
            ViewEngines.Engines.Clear();

            // and add the one we want
            ViewEngines.Engines.Add(new RazorViewEngine { AreaMasterLocationFormats = new[] { "~/{2}/{1}/{0}.cshtml", "~/{2}/{0}.cshtml" }, AreaViewLocationFormats = new[] { "~/{2}/{1}/{0}.cshtml", "~/{2}/{0}.cshtml", "~/{2}/Shared/{0}.cshtml" }, AreaPartialViewLocationFormats = new[] { "~/{2}/{1}/{0}.cshtml", "~/{2}/{0}.cshtml", "~/{2}/Shared/{0}.cshtml" }, MasterLocationFormats = new[] { "~/{1}/{0}.cshtml", "~/Shared/{0}.cshtml" }, ViewLocationFormats = new[] { "~/{1}/{0}.cshtml", "~/Shared/{0}.cshtml" }, PartialViewLocationFormats = new[] { "~/{1}/{0}.cshtml", "~/Shared/{0}.cshtml" }, FileExtensions = new[] { "cshtml" } });

            // Remove superflous header
            MvcHandler.DisableMvcResponseHeader = true;

            // Enforce HTTPS everywhere
            GlobalFilters.Filters.Add(new RequireHttpsAttribute());

            // User must be logged on as default. can be overriden with the Anonymous attribute
            GlobalFilters.Filters.Add(new AuthorizeAttribute());

            // Register jQuery
            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/jquery").Include("~/Scripts/jquery-{version}.js"));

            // Register jQuery validation
            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include("~/Scripts/jquery.validate*"));

            // Register jQuery Ajax
            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/jqueryajax").Include("~/Scripts/jquery.unobtrusive-ajax*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/modernizr").Include("~/Scripts/modernizr-*"));

            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include("~/Scripts/bootstrap.js", "~/Scripts/respond.js"));

            // Add the history.js bundle to allow back button to work correctly
            // BundleTable.Bundles.Add(new ScriptBundle("~/bundles/history").Include(
            // "~/Scripts/history.js/json2.js",
            // "~/Scripts/history.js/amplify.store.js",
            // "~/Scripts/history.js/history.js",
            // "~/Scripts/history.js/history.html4.js",
            // "~/Scripts/history.js/history.adapter.jquery.js"));
            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/history").Include("~/Scripts/jquery.history.js"));

            BundleTable.Bundles.Add(new StyleBundle("~/Content/css").Include("~/Content/bootstrap.css", "~/Content/site.css"));

            //// Set EnableOptimizations to false for debugging. For more information,
            //// visit http://go.microsoft.com/fwlink/?LinkId=301862
            // BundleTable.EnableOptimizations = false;

            // Very important setting if we want to use the routing structure we have created
            RouteTable.Routes.RouteExistingFiles = true;

            // Ignore resource routes
            RouteTable.Routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            // ..and browserlink
            RouteTable.Routes.IgnoreRoute("{*browserlink}", new { browserlink = @".*/arterySignalR/ping" });

            // ..and favicon if its missing
            RouteTable.Routes.IgnoreRoute("{*favicon}", new { favicon = @"(.*/)?favicon.ico(/.*)?" });
        }
    }
}