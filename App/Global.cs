namespace App
{
    using System;
    using System.Configuration;
    using System.Data.Linq;
    using System.Diagnostics;
    using System.Reflection;
    using System.Web;
    using System.Web.Mvc;
    using System.Web.Routing;
    using SimpleInjector;
    using SimpleInjector.Integration.Web.Mvc;

    public class Global : HttpApplication
    {
        /// <summary>
        /// Amazing to think this is all we need for logging....sigh!
        /// </summary>
        internal static TraceSource Log = new TraceSource(Assembly.GetExecutingAssembly().FullName);

        /// <summary>
        /// This is the IoC container used for this instance. Remember, one instance can be used by IIS for many requests.
        /// Application_Start happpens once every instance. That is where the container gets created.
        /// </summary>
        internal Container Container;
        
        /// <summary>
        /// This code runs once when the AppPool starts
        /// </summary>
        protected void Application_Start()
        {
            // Let's start a log! We can listen to this with tracelisteners in the web config
            Log.TraceInformation("Sponsorworks starting");

            // Set up the IoC Container. Apart from Application_Error in this class, we should kiss goodbye to the "new" keyword/instanstiator
            Container = new Container();

            // Register the Linq2Sql database
            Container.Register<DataContext>(() => new SWorks(ConfigurationManager.ConnectionStrings["Sworks"].ConnectionString));

            // Register All controllers in the Assembly
            Container.RegisterMvcControllers(Assembly.GetExecutingAssembly());

            // Allow filter registrations
            Container.RegisterMvcIntegratedFilterProvider();

            // Verify the container to ensure no errors
            Container.Verify();

            // Set the MVC Dependency resolver to the IoC Resolver
            DependencyResolver.SetResolver(
                                           new SimpleInjectorDependencyResolver(Container));

            // Register all the MVC Areas in this assembly
            AreaRegistration.RegisterAllAreas();

            // Ignore resource routes
            RouteTable.Routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            // Map the default route
            RouteTable.Routes.MapRoute(
                                       name: "Default",
                                       url: "{controller}/{action}/{id}",
                                       defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
                );
        }

        /// <summary>
        /// Handle ALL ASP.NET errors in one place, ie Globally. No HandleError filters or attributes please.
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

            // Set the status code. If its an HttpError then use the Error Code else its our code throwing exceptions, so 500.
            int statusCode = exception.GetType() == typeof(HttpException) ? ((HttpException)exception).GetHttpCode() : 500;

            // Create a context wrapper for the ErrorController
            var contextWrapper = new HttpContextWrapper(Context);

            // Create route data for the errorcontroller
            var routeData = new RouteData();

            // Add some route values for the controller
            routeData.Values.Add("controller", "Error");
            routeData.Values.Add("action", "Index");
            routeData.Values.Add("exception", exception);
            routeData.Values.Add("isAjaxRequet", contextWrapper.Request.IsAjaxRequest());

            // Set the correct status code for the response
            Response.StatusCode = statusCode;

            // We're gonna need an ErrorController
            IController errorController;

            // Let's cast ourselves so that we can access the container..deep, innit? 
            // basicallly...this method is not the method we think it is. The sender argument is actuallly
            // the instance of the object we created the container in. Therefore, that's where the container is.
            // That is why it's access modifier is internal, not private.
            
            if (!(sender is Global))
            {
                errorController = new ErrorController();
            }
            else
            {
                var app = (Global)sender;
                errorController = app.Container.GetInstance<ErrorController>();
            }

            // Create a new request context for the Error Controller
            var requestContext = new RequestContext(contextWrapper, routeData);

            // Execute the controller with the request context
            errorController.Execute(requestContext);

            // End the response
            Response.End();
        }
    }
}