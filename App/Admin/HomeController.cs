// --------------------------------------------------------------------------------------------------------------------
// <copyright file="HomeController.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the HomeController type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
namespace App.Admin
{
    using System;
    using System.Web.Mvc;

    using Data;

    /// <summary>
    /// The home controller.
    /// </summary>
    public sealed class HomeController : Controller
    {
        /// <summary>
        /// The db.
        /// </summary>
        private readonly Sponsorworks db;

        /// <summary>
        /// Initialises a new instance of the <see cref="HomeController"/> class.
        /// </summary>
        /// <param name="db">
        /// The db.
        /// </param>
        public HomeController(Sponsorworks db)
        {
            // Contract.Requires<ArgumentNullException>(db != null, "db");
            if (db == null)
            {
                throw new ArgumentNullException("db", "db cannot be null");
            }

            this.db = db;
        }

        /// <summary>
        /// The index.
        /// </summary>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [HttpGet]
        public ActionResult Index()
        {
            return this.View();
        }
    }
}