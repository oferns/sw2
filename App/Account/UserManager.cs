namespace App.Account
{
    using System;
    using Microsoft.AspNet.Identity;

    public class UserManager : UserManager<User, Guid>
    {
        public UserManager(IUserStore<User, Guid> store)
            : base(store)
        {
        }
    }
}