namespace App
{
    using System.Diagnostics;
    using System.Globalization;
    using System.Web.Mvc;

    public abstract class ThemedViewPage<T> : WebViewPage<T>
        where T : class
    {
        public ThemeHelper<T> Theme { get; set; }

        public override void InitHelpers()
        {
            base.InitHelpers();
            Theme = new ThemeHelper<T>(ViewContext, this);
        }

        public override void ExecutePageHierarchy()
        {
            Global.Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "Executing {0}", VirtualPath));
            base.ExecutePageHierarchy();
        }
    }
}