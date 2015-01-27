// --------------------------------------------------------------------------------------------------------------------
// <copyright file="Area.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the Area type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace App.Admin
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Globalization;
    using System.Web.Mvc;

    /// <summary>
    /// The area.
    /// </summary>
    public class Area : AreaRegistration
    {
        /// <summary>
        /// Gets the area name.
        /// </summary>
        public override string AreaName
        {
            get
            {
                return "Admin";
            }
        }

        /// <summary>
        /// The register area.
        /// </summary>
        /// <param name="context">
        /// The context.
        /// </param>
        public override void RegisterArea(AreaRegistrationContext context)
        {
            Contract.Assume(context != null);
            try
            {
                Global.Log.TraceInformation("Attempting to map {0} area default Route", this.AreaName);
                context.MapRoute(name: this.AreaName, url: string.Format(CultureInfo.InvariantCulture, "{0}/{{controller}}/{{action}}/{{id}}", this.AreaName), defaults: new { area = this.AreaName, controller = "Home", action = "Index", id = UrlParameter.Optional }, namespaces: new[] { string.Format(CultureInfo.InvariantCulture, "App.{0}", this.AreaName) });
                Global.Log.TraceInformation("Mapped {0} area default Route", this.AreaName);
            }
            catch (ArgumentException)
            {
                Global.Log.TraceInformation("Default Route mapping for {0} skipped. Already mapped by the host application", this.AreaName);
            }
        }
    }
}