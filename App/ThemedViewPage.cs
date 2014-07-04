﻿namespace App
{
    using System.Diagnostics;
    using System.Web.Mvc;

    public abstract class ThemedViewPage : WebViewPage
    {
        public ThemeHelper Theme { get; set; }

        public override void InitHelpers()
        {
            base.InitHelpers();
            Theme = new ThemeHelper(ViewContext, this);
        }

        public override void ExecutePageHierarchy()
        {
            Global.Log.TraceData(TraceEventType.Verbose, 0, "Executing {0}" + VirtualPath);

            base.ExecutePageHierarchy();
        }
    }
}