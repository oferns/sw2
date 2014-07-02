namespace App.Admin
{
    using System;
    using System.Globalization;
    using System.Web.Mvc;

    public class Area : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            try
            {
                Global.Log.TraceInformation("Attempting to map {0} area default Route", AreaName);
                context.MapRoute(
                                        name: AreaName,                                        
                                        url: string.Format(CultureInfo.InvariantCulture, "{0}/{{controller}}/{{action}}/{{id}}", AreaName),
                                        defaults: new { area = AreaName, controller = "Home", action = "Index", id = UrlParameter.Optional },
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