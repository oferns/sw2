namespace App
{
    using System.ComponentModel.Composition;
    using System.Diagnostics;
    using System.Globalization;
    using System.Web.Mvc;

    public abstract class TraceViewPage : WebViewPage
    {
        public override void ExecutePageHierarchy()
        {
            Global.Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "Executing {0}", VirtualPath));
            base.ExecutePageHierarchy();
        }
    }
}