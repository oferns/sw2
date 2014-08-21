namespace App
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Web.Mvc;
    using System.Web.Routing;
    using System.Web.UI.WebControls;

    /// <summary>
    /// This class facilitates the customizable parts of the site
    /// </summary>
    /// <typeparam name="T">T here will be the model type of the view</typeparam>
    public class ThemeHelper<T>
        where T : class
    {
        public ThemeHelper(ViewContext viewContext,
            IViewDataContainer viewDataContainer)
            : this(viewContext, viewDataContainer, RouteTable.Routes)
        {
            Contract.Requires<ArgumentNullException>(viewDataContainer != null, "viewDataContainer");
        }

        public ThemeHelper(ViewContext viewContext,
            IViewDataContainer viewDataContainer, RouteCollection routeCollection)
        {
            Contract.Requires<ArgumentNullException>(viewDataContainer != null, "viewDataContainer");
            ViewContext = viewContext;
            ViewData = new ViewDataDictionary(viewDataContainer.ViewData);
        }

        public ViewDataDictionary ViewData { get; private set; }
        public ViewContext ViewContext { get; private set; }

        public MvcHtmlString Logo
        {
            get
            {
                var img = new Image { ImageUrl = "http://localhost:44301/images/logo.jpg" };
                return Global.RenderWebControl(img);
            }
        }

        public string GetStyles()
        {
            return @"c:\";
        }
    }
}