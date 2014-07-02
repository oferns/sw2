namespace App.Account
{
    using System;
    using Microsoft.AspNet.Identity;

    public class RoleManager : RoleManager<Role, UInt16>
    {
        public RoleManager(IRoleStore<Role, ushort> store)
            : base(store)
        {
        }
    }
}