namespace Contracts
{
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;

    [ContractClass(typeof(QueryHandlerContract<,>))]
    public interface IQueryHandler<in TQuery, TResult>
        where TQuery : class, IQuery<TResult> 
    {
        Task<TResult> Handle(TQuery query);
    }
}