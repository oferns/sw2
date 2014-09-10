namespace Data.Auth.Queries
{
    using Contracts;

    public sealed class CreateUser : IQuery<Id_User>
    {
        public Id_User User { get; set; }
    }
}