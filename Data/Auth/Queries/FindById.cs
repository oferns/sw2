namespace Data.Auth.Queries
{
    using System;
    using Contracts;

    public sealed class FindById : IQuery<Id_User>
    {
        public Guid Id { get; set; }
    }
}