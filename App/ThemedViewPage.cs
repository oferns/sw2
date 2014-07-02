namespace App
{
    using System.Web.Mvc;

    public abstract class ThemedViewPage<T> : WebViewPage<T> where T : class
    {
        public ThemeHelper<T> Theme { get; set; }
        public override void InitHelpers()
        {
            base.InitHelpers();
            Theme = new ThemeHelper<T>(ViewContext, this);
        }
    }
}