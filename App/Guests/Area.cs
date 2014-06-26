namespace App.Guests
{
    using System.Web.Mvc;

    public class Area : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Guests";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
        }
    }
}