namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.math
namespace go ignis.rpc.executor


include "../IExecutorException.thrift"
include "../ISource.thrift"

service IMathModule{

	void sample(1: bool withReplacement, 2: list<i64> num, 3: i32 seed) throws (1:IExecutorException.IExecutorException ex),

	i64 count() throws (1:IExecutorException.IExecutorException ex),

	void max() throws (1:IExecutorException.IExecutorException ex),

	void min() throws (1:IExecutorException.IExecutorException ex),

	void max1(1: ISource.ISource cmp) throws (1:IExecutorException.IExecutorException ex),

	void min1(1: ISource.ISource cmp) throws (1:IExecutorException.IExecutorException ex),

	/*Keys-Value*/
	void sampleByKey(1: bool withReplacement, 2: ISource.ISource fractions, 3: i32 seed) throws (1:IExecutorException.IExecutorException ex),

	void countByKey()  throws (1:IExecutorException.IExecutorException ex),

	void countByValue()  throws (1:IExecutorException.IExecutorException ex);
}