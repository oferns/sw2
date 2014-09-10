namespace App.Auth
{
    using System;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.Owin;
    using Microsoft.Owin;

    public class RoleManager : RoleManager<Role, UInt16>
    {
        public RoleManager(IdentityFactoryOptions<RoleManager> options, IOwinContext context, IRoleStore<Role, ushort> store)
            : base(store)
        {
        }
    }
}