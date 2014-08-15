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
        public ActionResult Error(Exception exception, bool isAjaxRequet)
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
        public ActionResult NotFound(bool? isAjaxRequest, Exception exception)
        {
            Response.StatusCode = 404; /* TODO: OJF We have to set this here as this might be called by 
                                        * IIS at the moment because of the httpErrors section in the web.config. We need a static HTML not found page really and get rid of this method
                                        */
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