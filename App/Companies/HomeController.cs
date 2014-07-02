namespace App.Companies
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Web.Mvc;

    public sealed class HomeController : Controller
    {
        private readonly Sponsorworks db;

        public HomeController(Sponsorworks db)
        {
            Contract.Requires<ArgumentNullException>(db != null, "db");
            this.db = db;
        }

        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
    }
}