namespace App
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Web.Mvc;

    public sealed class AccountController : Controller
    {
        private readonly Sponsorworks db;

        public AccountController(Sponsorworks db)
        {
            Contract.Requires<ArgumentNullException>(db != null, "db");
            this.db = db;
        }


        public ActionResult Index()
        {            
            return View();
        }

    }
}