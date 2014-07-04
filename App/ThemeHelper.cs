﻿namespace App
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Web.Mvc;
    using System.Web.Routing;

    public class ThemeHelper
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
    }
}