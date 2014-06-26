namespace App
{
    using System.Web.Mvc;

    public sealed class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
    }
}