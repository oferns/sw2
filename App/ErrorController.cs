// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ErrorController.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the ErrorController type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace App
{
    using System;
    using System.Web.Mvc;

    /// <summary>
    /// The error controller.
    /// </summary>
    [AllowAnonymous]
    public sealed class ErrorController : BaseController
    {
        /// <summary>
        /// The error.
        /// </summary>
        /// <param name="exception">
        /// The exception.
        /// </param>
        /// <param name="isAjaxRequest">
        /// The is ajax requet.
        /// </param>
        /// <returns>
        /// The <see cref="ActionResult"/>.
        /// </returns>
        [AcceptVerbs(HttpVerbs.Get | HttpVerbs.Post)]
        public ActionResult Error(Exception exception, bool isAjaxRequest)
        {
            // If it's not an AJAX request that triggered this action then just retun the view
            if (!isAjaxRequest)
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