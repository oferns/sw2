namespace wwwroot
{
    using System.Diagnostics;

    public class Web
    {
        private static TraceSource source;

        public static TraceSource Log
        {
            get
            {
                return source ?? (source = new TraceSource("Web"));
            }
        }
    }
}