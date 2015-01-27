// --------------------------------------------------------------------------------------------------------------------
// <copyright file="AdminAreaRegistrationTests.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the AdminAreaRegistrationTests type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace App.Tests.Admin
{
    using System.Globalization;
    using System.Web.Mvc;
    using System.Web.Routing;
    using App.Admin;

    using Microsoft.VisualStudio.TestTools.UnitTesting;

    /// <summary>
    /// The admin area registration tests.
    /// </summary>
    [TestClass]
    public class AdminAreaRegistrationTests
    {
        /// <summary>
        /// The should return area name test.
        /// </summary>
        [TestMethod]
        public void ShouldReturnAreaName()
        {
            var area = new Area();
            Assert.AreEqual("Admin", area.AreaName, "Area Name");
        }

        /// <summary>
        /// The should add default route to route collection.
        /// </summary>
        [TestMethod]
        public void ShouldAddDefaultRouteToRouteCollection()
        {
            var area = new Area();
            var context = new AreaRegistrationContext("Admin", new RouteCollection(), null);
            area.RegisterArea(context);
            Assert.AreEqual(context.Routes.Count, 1);
        }


        [TestMethod]
        public void ShouldSwallowExceptionIfRouteAlreadyExists()
        {
            var area = new Area();
            var context = new AreaRegistrationContext("Admin", new RouteCollection(), null);
            context.MapRoute(name: "Admin", url: string.Format(CultureInfo.InvariantCulture, "{0}/{{controller}}/{{action}}/{{id}}", this.AreaName), defaults: new { area = this.AreaName, controller = "Home", action = "Index", id = UrlParameter.Optional }, namespaces: new[] { string.Format(CultureInfo.InvariantCulture, "App.{0}", "Admin") });
            area.RegisterArea(context);
            Assert.AreEqual(context.Routes.Count, 1);
        }
    }
}