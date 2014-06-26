namespace App.Resellers
{
    using System.Web.Mvc;

    public class Area : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Resellers";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
        }
    }
}