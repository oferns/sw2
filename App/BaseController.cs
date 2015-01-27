// --------------------------------------------------------------------------------------------------------------------
// <copyright file="BaseController.cs" company="Sponsorworks">
//   Copyright
// </copyright>
// <summary>
//   Defines the BaseController type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace App
{
    using System;
    using System.Diagnostics;
    using System.Web.Mvc;
    using Microsoft.Practices.EnterpriseLibrary.Common.Utility;

    /// <summary>
    /// The base controller.
    /// </summary>
    public abstract class BaseController : Controller
    {
        /// <summary>
        /// The area.
        /// </summary>
        private string area;

        /// <summary>
        /// The controller.
        /// </summary>
        private string controller;

        /// <summary>
        /// The action.
        /// </summary>
        private string action;

        /// <summary>
        /// Gets the domain owner id.
        /// </summary>
        protected internal Guid DomainOwnerId
        {
            get
            {

                return Guid.Parse((string)ControllerContext.HttpContext.Items["DomainOwnerId"]);
            }
        }

        /// <summary>
        /// Gets the domain owner role id.
        /// </summary>
        protected internal byte DomainOwnerRoleId
        {
            get
            {
                return (byte)ControllerContext.HttpContext.Items["DomainOwnerRoleId"];
            }
        }

        /// <summary>
        /// Gets the domain id.
        /// </summary>
        protected internal int DomainId
        {
            get
            {
                return int.Parse((string)ControllerContext.HttpContext.Items["DomainId"]);
            }
        }

        /// <summary>
        /// The on action executing.
        /// </summary>
        /// <param name="filterContext">
        /// The filter context.
        /// </param>
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            this.area = filterContext.RouteData.Values["area"] as string;
            this.area = string.IsNullOrEmpty(this.area) ? "root" : this.area;
            this.controller = filterContext.RouteData.GetRequiredString("controller");
            this.action = filterContext.RouteData.GetRequiredString("action");

            Global.Log.TraceData(TraceEventType.Information, 0, string.Format("Action Executing: {0}-{1}-{2}", this.area, this.controller, this.action));
#if DEBUG
            filterContext.ActionParameters.ForEach(a => Global.Log.TraceData(TraceEventType.Verbose, 0, string.Format("{0}-{1}", a.Key, a.Value)));
#endif
            base.OnActionExecuting(filterContext);
        }

        /// <summary>
        /// The on action executed.
        /// </summary>
        /// <param name="filterContext">
        /// The filter context.
        /// </param>
        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
            Global.Log.TraceData(TraceEventType.Information, 0, string.Format("Action Executed: {0}-{1}-{2}", area, controller, action));
        }

        /// <summary>
        /// The on result executing.
        /// </summary>
        /// <param name="filterContext">
        /// The filter context.
        /// </param>
        protected override void OnResultExecuting(ResultExecutingContext filterContext)
        {
            Global.Log.TraceData(TraceEventType.Information, 0, string.Format("Result Executing: {0}-{1}-{2}", area, controller, action));
            base.OnResultExecuting(filterContext);
        }

        /// <summary>
        /// The on result executed.
        /// </summary>
        /// <param name="filterContext">
        /// The filter context.
        /// </param>
        protected override void OnResultExecuted(ResultExecutedContext filterContext)
        {
            base.OnResultExecuted(filterContext);
            Global.Log.TraceData(TraceEventType.Information, 0, string.Format("Result Executing: {0}-{1}-{2} ResultType: {3}", area, controller, action, filterContext.Result.GetType().Name));
        }
    }
}