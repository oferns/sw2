namespace App
{
    using System;
    using System.Diagnostics;
    using System.Web.Mvc;
    using Microsoft.Practices.EnterpriseLibrary.Common.Utility;

    public abstract class BaseController : Controller
    {
        private string area;
        private string controller;
        private string action;


        /// <summary>
        /// These properties are set in the Global.BeginRequest Method
        /// </summary>
        protected internal Guid DomainOwnerId
        {
            get
            {

                return Guid.Parse((string)ControllerContext.HttpContext.Items["DomainOwnerId"]);
            }
        }

        protected internal byte DomainOwnerRoleId
        {
            get
            {
                return (byte)ControllerContext.HttpContext.Items["DomainOwnerRoleId"];
            }
        }

        protected internal int DomainId
        {
            get
            {
                return int.Parse((string)ControllerContext.HttpContext.Items["DomainId"]);
            }
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            area = filterContext.RouteData.Values["area"] as string;
            area = string.IsNullOrEmpty(area) ? "root" : area;
            controller = filterContext.RouteData.GetRequiredString("controller");
            action = filterContext.RouteData.GetRequiredString("action");

            Global.Log.TraceData(TraceEventType.Information, 0, string.Format("Action Executing: {0}-{1}-{2}", area, controller, action));
#if DEBUG
            filterContext.ActionParameters.ForEach(a => Global.Log.TraceData(TraceEventType.Verbose, 0, string.Format("{0}-{1}", a.Key, a.Value)));
#endif
            base.OnActionExecuting(filterContext);
        }

        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
            Global.Log.TraceData(TraceEventType.Information, 0, string.Format("Action Executed: {0}-{1}-{2}", area, controller, action));
        }

        protected override void OnResultExecuting(ResultExecutingContext filterContext)
        {
            Global.Log.TraceData(TraceEventType.Information, 0, string.Format("Result Executing: {0}-{1}-{2}", area, controller, action));
            base.OnResultExecuting(filterContext);
        }

        protected override void OnResultExecuted(ResultExecutedContext filterContext)
        {
            base.OnResultExecuted(filterContext);
            Global.Log.TraceData(TraceEventType.Information, 0, string.Format("Result Executing: {0}-{1}-{2} ResultType: {3}", area, controller, action, filterContext.Result.GetType().Name));
        }
    }
}