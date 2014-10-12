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
            Global.Log.TraceData(TraceEventType.Verbose, 0, string.Format(CultureInfo.InvariantCulture, "Executing {0}",  Server.MapPath(this.VirtualPath)));
            this.Output.WriteLine(string.Format(CultureInfo.InvariantCulture, "<!--{0} Begin -->", Server.MapPath(this.VirtualPath)));
            base.ExecutePageHierarchy();
            this.Output.WriteLine(string.Format(CultureInfo.InvariantCulture, "<!--{0} End -->",  Server.MapPath(this.VirtualPath)));
        }
    }
}