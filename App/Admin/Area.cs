namespace App.Admin
{
    using System.Web.Mvc;

    public class Area : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
        }
    }
}