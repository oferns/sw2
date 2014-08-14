namespace App.Auth
{
    using System;
    using Microsoft.AspNet.Identity;

    public class Role : IRole<UInt16>
    {
        public UInt16 Id { get; internal set; }

        public string Name { get; set; }
    }
}