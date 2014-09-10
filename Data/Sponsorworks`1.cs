namespace Data
{
    using System.Diagnostics;
    using Common.Tracing;

    public partial class Sponsorworks
    {
        internal static TraceSource Logger = new TraceSource("Data");

        partial void OnCreated()
        {
            Log = new ActionTextWriter(sql => Logger.TraceData(TraceEventType.Verbose, 0, sql));
        }
    }
}