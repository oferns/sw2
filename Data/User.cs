namespace Data
{
    using System;
    using System.Collections.Generic;
    using System.Security.Claims;
    using Microsoft.AspNet.Identity;

    // ReSharper disable once InconsistentNaming
    public partial class Id_User : IUser<Guid>
    {
        public ICollection<Claim> Claims { get; internal set; }

    }
}