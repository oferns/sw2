namespace App
{
    using System;
    using System.Web.Mvc;

    // Allow anyone to see the error page
    [AllowAnonymous]
    public sealed class ErrorController : Controller
    {
        // Allow both allowed messages for errors on GET and POST
        [AcceptVerbs(HttpVerbs.Get | HttpVerbs.Post)]
        public ActionResult Index(Exception exception, bool isAjaxRequet)
        {
            // If it's not an AJAX request that triggered this action then just retun the view
            if (!isAjaxRequet)
            {
                return View(exception);
            }

            // Otherwise, if it was an AJAX request, return an anon type with the message from the exception
            var errorObjet = new { message = exception.Message };
            return Json(errorObjet, JsonRequestBehavior.AllowGet);
        }

        [AcceptVerbs(HttpVerbs.Get | HttpVerbs.Post)]
        public ActionResult NotFound()
        {

            return View();

            // If it's not an AJAX request that triggered this action then just retun the view
            //if (!isAjaxRequet)
            //{
            //    return View(exception);
            //}

            // Otherwise, if it was an AJAX request, return an anon type with the message from the exception
            //var errorObjet = new { message = exception.Message };
            //return Json(errorObjet, JsonRequestBehavior.AllowGet);
        }


    }
}