namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.cachecontext


include "../IExecutorException.thrift"
include "../ISource.thrift"

service ICacheContextModule{

	i64 saveContext() throws (1:IExecutorException.IExecutorException ex),

	void clearContext() throws (1:IExecutorException.IExecutorException ex),

	void loadContext(1: i64 id) throws (1:IExecutorException.IExecutorException ex),

	void cache(1: i64 id, 2: i8 level) throws (1:IExecutorException.IExecutorException ex),

	void loadCache(1: i64 id) throws (1:IExecutorException.IExecutorException ex);
}
