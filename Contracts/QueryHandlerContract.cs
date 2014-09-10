namespace Contracts
{
    using System;
    using System.Diagnostics.Contracts;
    using System.Threading.Tasks;

    [ContractClassFor(typeof(IQueryHandler<,>))]
    internal abstract class QueryHandlerContract<TQuery, TResult> : IQueryHandler<TQuery, TResult>
        where TQuery : class, IQuery<TResult> 
    {
        public Task<TResult> Handle(TQuery query)
        {
            Contract.Requires<ArgumentNullException>(query != null, "query");
            return Task.FromResult(default(TResult));
        }
    }
}