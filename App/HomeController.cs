namespace App
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Web.Mvc;

    public sealed class HomeController : BaseController
    {
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [AllowAnonymous]
        public ActionResult About()
        {
            return View();
        }

        [HttpGet]
        [AllowAnonymous]
        public ActionResult Terms()
        {
            return View();
        }

    }
}