namespace App
{
    using System.ComponentModel.Composition;
    using System.Diagnostics;
    using System.Globalization;
    using System.Web.Mvc;

    public abstract class ThemedViewPage : WebViewPage
    {
        public ThemeHelper<object> Theme { get; private set; }

        public override void InitHelpers()
        {
            base.InitHelpers();
            Theme = new ThemeHelper<object>(ViewContext, this);
        }

        public override void ExecutePageHierarchy()
        {
            Global.Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "Executing {0}", VirtualPath));
            base.ExecutePageHierarchy();
        }
    }
}