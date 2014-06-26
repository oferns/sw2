namespace App.Companies
{
    using System.Web.Mvc;

    public class Area : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Companies";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
        }
    }
}