namespace App
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Web.Mvc;
    using System.Web.Routing;

    public class ThemeHelper<T> where T : class
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
            ViewData = new ViewDataDictionary<T>(viewDataContainer.ViewData);
        }

        public ViewDataDictionary<T> ViewData { get; private set; }
        public ViewContext ViewContext { get; private set; }
    }
}