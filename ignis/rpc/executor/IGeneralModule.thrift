namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.general


include "../IExecutorException.thrift"
include "../ISource.thrift"

service IGeneralModule{
	void map_(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void filter(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void flatmap(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void keyBy(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void mapPartitions(1: ISource.ISource src, 2:  bool preservesPartitioning) throws (1:IExecutorException.IExecutorException ex),

	void mapPartitionsWithIndex(1: ISource.ISource src, 2:  bool preservesPartitioning) throws (1:IExecutorException.IExecutorException ex),

	void mapExecutor(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void mapExecutorTo(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void groupBy(1: ISource.ISource src, 2:  i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	void sort(1: bool ascending) throws (1:IExecutorException.IExecutorException ex),

	void sort2(1: bool ascending, 2:  i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	void sortBy(1: ISource.ISource src, 2:  bool ascending) throws (1:IExecutorException.IExecutorException ex),

	void sortBy3(1: ISource.ISource src, 2:  bool ascending, 3:  i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	/*Keys-Value*/
	void flatMapValues(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void mapValues(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void groupByKey(1: i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	void reduceByKey(1: ISource.ISource src, 2: i64 numPartitions, 3: bool localReduce) throws (1:IExecutorException.IExecutorException ex),

	void aggregateByKey(1: ISource.ISource zero, 2: ISource.ISource seqOp, 3: i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	void aggregateByKey4(1: ISource.ISource zero, 2: ISource.ISource seqOp, 3: ISource.ISource combOp, 4: i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	void foldByKey(1: ISource.ISource zero, 2: ISource.ISource src, 3: i64 numPartitions, 4: bool localFold) throws (1:IExecutorException.IExecutorException ex),

	void sortByKey(1: bool ascending) throws (1:IExecutorException.IExecutorException ex),

	void sortByKey2a(1: bool ascending, 2:  i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	void sortByKey2b(1: ISource.ISource src, 2:  bool ascending) throws (1:IExecutorException.IExecutorException ex),

	void sortByKey3(1: ISource.ISource src, 2:  bool ascending, 3: i64 numPartitions) throws (1:IExecutorException.IExecutorException ex);
}