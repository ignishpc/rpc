namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.general.action


include "../IExecutorException.thrift"
include "../ISource.thrift"

service IGeneralActionModule{

	void execute(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void reduce(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void treeReduce(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void collect() throws (1:IExecutorException.IExecutorException ex),

	void aggregate(1: ISource.ISource zero, 2: ISource.ISource seqOp, 3: ISource.ISource combOp) throws (1:IExecutorException.IExecutorException ex),

	void treeAggregate(1: ISource.ISource zero, 2: ISource.ISource seqOp, 3: ISource.ISource combOp) throws (1:IExecutorException.IExecutorException ex),

	void fold(1: ISource.ISource zero, 2: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void treeFold(1: ISource.ISource zero, 2: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void take(1: i64 num) throws (1:IExecutorException.IExecutorException ex),

	void foreach_(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void foreachPartition(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void foreachExecutor(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void top(1: i64 num) throws (1:IExecutorException.IExecutorException ex),

	void top2(1: i64 num, 2: ISource.ISource cmp) throws (1:IExecutorException.IExecutorException ex),

	void takeOrdered(1: i64 num) throws (1:IExecutorException.IExecutorException ex),

	void takeOrdered2(1: i64 num, 2: ISource.ISource cmp) throws (1:IExecutorException.IExecutorException ex),

	/*Keys-Value*/
	void keys()  throws (1:IExecutorException.IExecutorException ex),

	void values()  throws (1:IExecutorException.IExecutorException ex);
}