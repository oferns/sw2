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

        public static void Configuration(IAppBuilder app)
        {
            // If we have a listener for the Linq2Sql SQL Log....
            var sqlLogger = Log.Listeners["SqlWriter"] as TextWriterTraceListener;

            app.CreatePerOwinContext(() => new Sponsorworks(ConfigurationManager.ConnectionStrings["Sponsorworks"].ConnectionString) { Log = sqlLogger == null ? null : sqlLogger.Writer });
            app.CreatePerOwinContext<UserStore>(((options, context) => new UserStore(context.Get<Sponsorworks>())));
            app.CreatePerOwinContext<UserManager>(((options, context) => new UserManager(context.Get<UserStore>())));
            app.CreatePerOwinContext<SignInManager>(((options, context) => new SignInManager(context.Get<UserManager>(), context.Authentication)));

        }
        
        public static void Initialize()
        {

            // Lets get rid of view engines we are not using
            ViewEngines.Engines.Clear();

            // and add the one we want
            ViewEngines.Engines.Add(new RazorViewEngine
            {   
                // Look in ControllerName/, then / for a layout view 
                AreaMasterLocationFormats = new[] { "~/{2}/{1}/{0}.cshtml", "~/{2}/{0}.cshtml" },
                AreaViewLocationFormats = new[] { "~/{2}/{1}/{0}.cshtml", "~/{2}/{0}.cshtml", "~/{2}/Shared/{0}.cshtml"},
                AreaPartialViewLocationFormats = new[] { "~/{2}/{1}/{0}.cshtml", "~/{2}/{0}.cshtml", "~/{2}/Shared/{0}.cshtml" },
                MasterLocationFormats = new[] { "~/{1}/{0}.cshtml", "~/{0}.cshtml" },
                ViewLocationFormats = new[] { "~/{1}/{0}.cshtml", "~/Shared/{0}.cshtml" },
                PartialViewLocationFormats = new[] { "~/{1}/{0}.cshtml", "~/Shared/{0}.cshtml" },
                FileExtensions =new [] {"cshtml"}
            });


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