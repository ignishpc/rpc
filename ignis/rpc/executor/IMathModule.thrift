namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.math


include "../IExecutorException.thrift"
include "../ISource.thrift"

service IMathModule{

	void sample(1: bool withReplacement, 2: double fraction, 3: i64 seed) throws (1:IExecutorException.IExecutorException ex),
	
	void takeSample(1: bool withReplacement, 2: double fraction, 3: i64 seed) throws (1:IExecutorException.IExecutorException ex),

	i64 count() throws (1:IExecutorException.IExecutorException ex),

	void max(1: ISource.ISource cmp) throws (1:IExecutorException.IExecutorException ex),

	void min(1: ISource.ISource cmp) throws (1:IExecutorException.IExecutorException ex);
}