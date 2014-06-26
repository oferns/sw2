namespace App.Resellers
{
    using System;
    using System.Data.Linq;
    using System.Web.Mvc;

    public sealed class HomeController : Controller
    {
        private readonly SWorks db;

        public HomeController(SWorks db)
        {
            if (db == null)
            {
                throw new ArgumentNullException("db");
            }

            this.db = db;
        }

        public ActionResult Index()
        {
            return View();
        }
    }
}