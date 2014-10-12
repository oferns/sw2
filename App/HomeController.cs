// --------------------------------------------------------------------------------------------------------------------
// <copyright file="HomeController.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the HomeController type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace App
{
    using System.Security.Claims;
    using System.Web.Mvc;

    /// <summary>
    /// The home controller.
    /// </summary>
    public sealed class HomeController : BaseController
    {
        /// <summary>
        /// The index view.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Index()
        {
            return this.View();
        }

        /// <summary>
        /// The about view.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [HttpGet]
        [AllowAnonymous]
        public ActionResult About()
        {
            return this.View();
        }

        /// <summary>
        /// The terms.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Terms()
        {
            return this.View();
        }
    }
}