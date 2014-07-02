namespace wwwroot.Initialize
{
    using System.Web.Mvc;
    using System.Web.Optimization;

    public class Initializer
    {
        public static void Initialize()
        {

            // Lets get rid of view engines we are not using
            ViewEngines.Engines.Clear();

            // and add the one we want
            ViewEngines.Engines.Add(new RazorViewEngine()
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