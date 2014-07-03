namespace App.Account
{
    using System;
    using System.Collections.Generic;
    using System.Security.Claims;
    using Microsoft.AspNet.Identity;

    public class User : IUser<Guid>
    {
        public Guid Id { get; internal set; }
        public string UserName { get; set; }
        public string SecurityStamp { get; set; }
        public string EmailAddress { get; set; }
        public ICollection<RoleMember> Roles { get; internal set; }
        public ICollection<Claim> Claims { get; internal set; }
    }
}