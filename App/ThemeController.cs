namespace App
{
    using System.Web.Mvc;

    public sealed class ThemeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
    }
}