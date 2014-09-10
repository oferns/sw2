namespace App
{
    using System;
    using System.Diagnostics;
    using System.Diagnostics.Contracts;
    using System.IO;
    using System.Web;
    using System.Web.Mvc;
    using System.Web.Routing;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    public class Global : HttpApplication
    {
        /// <summary>
        /// Amazing to think this is all we need for logging....sigh!
        /// </summary>
        internal static TraceSource Log = new TraceSource("App");

        /// <summary>
        /// Renders a webcontrol as a MvcHtmlString. Used in the Theme helpers
        /// </summary>
        /// <param name="control"></param>
        /// <returns></returns>
        internal static MvcHtmlString RenderWebControl(WebControl control)
        {
            var stringWriter = new StringWriter();
            try
            {
                string result;
                using (var writer = new HtmlTextWriter(stringWriter))
                {
                    control.RenderControl(writer);
                    result = stringWriter.ToString();
                }
                stringWriter = null;
                return new MvcHtmlString(result);
            }
            finally
            {
                if (stringWriter != null)
                {
                    stringWriter.Dispose();
                }
            }
        }

        /// <summary>
        /// This code runs once when the AppPool starts
        /// </summary>
        protected void Application_Start()
        {
            // Lets define some contracts
            Contract.Assume(RouteTable.Routes != null);

            // Let's start a log! We can listen to this with tracelisteners in the web config
            Log.TraceInformation("Sponsorworks starting");

            // Register all the MVC Areas in this assembly. Do this after ignores and before the default route
            AreaRegistration.RegisterAllAreas();

            try
            {
                Log.TraceInformation("Attempting to map the ActionOnly Route");
                RouteTable.Routes.MapRoute(
                                           name: "ActionOnly",
                                           url: "{action}",
                                           defaults: new { area = string.Empty, controller = "Home", action = "Index" },
                                           namespaces: new[] { "App" }
                    );
            }
                // It's already been mapped...
            catch (ArgumentException)
            {
                Log.TraceInformation("Default Route mapping skipped. Already mapped by the host application");
            }

            // Try and map the default route
            try
            {
                Log.TraceInformation("Attempting to map the default Route");
                RouteTable.Routes.MapRoute(
                                           name: "Default",
                                           url: "{controller}/{action}/{id}",
                                           defaults: new { area = string.Empty, controller = "Home", action = "Index", id = UrlParameter.Optional },
                                           namespaces: new[] { "App" }
                    );
            }
                // It's already been mapped...
            catch (ArgumentException)
            {
                Log.TraceInformation("Default Route mapping skipped. Already mapped by the host application");
            }
        }

        /// <summary>
        /// This code runs on every request that hits our code from IIS
        /// Static file requests (js, css etc) should NOT hit this method
        /// but rather should be served by IIS. If you are hitting this method 
        /// for static requests then check the web.config in the system.webServer/modules section for
        /// runAllManagedModulesForAllRequests. It should be false. If it is and 
        /// you are still hitting this method then you probably have a MVC routing issue
        /// </summary>
        protected void Application_BeginRequest()
        {
            if (!Request.Path.StartsWith("/__browserLink/"))
            {
                Log.TraceData(TraceEventType.Verbose, 0, string.Format("Begin Request {0} from {1}", Request.RawUrl, Request.UserHostAddress));
            }

            HttpContext.Current.Items.Add("DomainOwnerId", "F50613A5-F898-4825-96A1-889655F651B8");
            HttpContext.Current.Items.Add("DomainOwnerRoleId", "1");
            HttpContext.Current.Items.Add("DomainId", "2");
        }

        /// <summary>
        /// This code runs at the end of every request
        /// </summary>
        protected void Application_EndRequest()
        {
            if (!Request.Path.StartsWith("/__browserLink/"))
            {
                Log.TraceData(TraceEventType.Verbose, 0, string.Format("End Request {0} from {1} Result:{2} {3}", Request.RawUrl, Request.UserHostAddress, Response.StatusCode, Response.StatusDescription));
            }
        }

        /// <summary>
        /// Handle ASP.NET errors.
        /// HTTP Errors (think Static file not found) are handled in the web.config. They dont reach our code. (HTTP.SYS & IIS deal with them before they get to us)
        /// However, we redirect them to the error controller (D'oh!). We should make static html files.
        /// NB. Ensure there is NO possibility of an exception in the ErrorControllor. Otherwise we are in infinite loop/stack overflow territory.
        /// </summary>
        /// <param name="sender">The HttpApplication object (ie this)</param>
        /// <param name="e">Empty Event Args</param>
        protected void Application_Error(object sender, EventArgs e)
        {
            // Retrieve the error 
            Exception exception = Server.GetLastError();

            // er...Log it! Hopefully someone is listening..
            Log.TraceData(TraceEventType.Error, 0, exception);

            // Clear the Error
            Server.ClearError();

            //if(exception is )

            // Set the status code. If its an HttpError then use the Error Code else its our code throwing exceptions, so 500.
            int statusCode = exception.GetType() == typeof(HttpException) ? ((HttpException)exception).GetHttpCode() : 500;

            // Set the action. If a method is not found on a controller then the status code will be 404 but there will still be an excepion object
            string action = statusCode == 404 ? "NotFound" : "Error";

            // Create a context wrapper for the ErrorController
            var contextWrapper = new HttpContextWrapper(Context);

            // Create route data for the errorcontroller
            var routeData = new RouteData();

            // Add some route values for the controller
            routeData.Values.Add("controller", "Error");
            routeData.Values.Add("action", action);
            routeData.Values.Add("exception", exception);
            routeData.Values.Add("isAjaxRequet", contextWrapper.Request.IsAjaxRequest());

            // Set the correct status code for the response
            Response.TrySkipIisCustomErrors = true;
            Response.StatusCode = statusCode;
            Response.ContentType = "text/html";

            // We're gonna need an ErrorController
            IController errorController = new ErrorController();

            // Create a new request context for the Error Controller
            var requestContext = new RequestContext(contextWrapper, routeData);

            // Execute the controller with the request context
            errorController.Execute(requestContext);

            // End the response
            Response.End();
        }
    }
}