namespace App.Companies
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Globalization;
    using System.Web.Mvc;

    public class Area : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Companies";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            Contract.Assume(context != null);
            try
            {
                Global.Log.TraceInformation("Attempting to map {0} area default Route", AreaName);
                context.MapRoute(
                                        name: AreaName,
                                        url: string.Format("{0}/{{controller}}/{{action}}/{{id}}", AreaName),
                                        defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                                        namespaces: new[] { string.Format(CultureInfo.InvariantCulture, "App.{0}", AreaName) }
                    );
                Global.Log.TraceInformation("Mapped {0} area default Route", AreaName);
            }
            catch (ArgumentException)
            {
                Global.Log.TraceInformation("Default Route mapping for {0} skipped. Already mapped by the host application", AreaName);
            }
        }
    }
}