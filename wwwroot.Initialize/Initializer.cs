namespace wwwroot.Initialize
{
    using System.Configuration;
    using System.Diagnostics;
    using System.Reflection;
    using System.Web.Mvc;
    using System.Web.Optimization;
    using App;
    using App.Account;
    using Owin;
    using Microsoft.AspNet.Identity.Owin;

    public class Initializer
    {
        internal static TraceSource Log = new TraceSource(Assembly.GetExecutingAssembly().GetName().Name);

        /// <summary>
        /// This method is called by OWIN. OWIN deals with the authentication on the site
        /// It is called by way of an assembly attribute in this project's properties/AssemblyInfo.cs
        /// [assembly: OwinStartup(typeof(Initializer), "Configuration")]
        /// </summary>
        /// <param name="app">app</param>
        public static void Configuration(IAppBuilder app)
        {
            // If we have a listener for the Linq2Sql SQL Log....
            var sqlLogger = Trace.Listeners["SqlWriter"] as TextWriterTraceListener;
            
            // This is like DI for Authentication. The Account Controller recieves these.
            app.CreatePerOwinContext(() => new Sponsorworks(ConfigurationManager.ConnectionStrings["Sponsorworks"].ConnectionString) { Log = sqlLogger == null ? null : sqlLogger.Writer });
            app.CreatePerOwinContext<UserStore>(((options, context) => new UserStore(context.Get<Sponsorworks>())));
            app.CreatePerOwinContext<UserManager>(((options, context) => new UserManager(context.Get<UserStore>())));
            app.CreatePerOwinContext<SignInManager>(((options, context) => new SignInManager(context.Get<UserManager>(), context.Authentication)));

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
                FileExtensions =new [] {"cshtml"}
            });

            // Enforce HTTPS everywhere
            GlobalFilters.Filters.Add(new RequireHttpsAttribute());

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