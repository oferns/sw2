namespace App.Account
{
    using System;
    using Microsoft.AspNet.Identity;

    public class User : IUser<Guid>
    {
        public Guid Id { get; internal set; }
        public string UserName { get; set; }

    }
}