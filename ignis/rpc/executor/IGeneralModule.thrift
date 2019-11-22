namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.general


include "../IExecutorException.thrift"
include "../ISource.thrift"

service IGeneralModule{
	void map_(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void filter(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void flatmap(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void mapPartitions(1: ISource.ISource src, 2:  bool preservesPartitioning) throws (1:IExecutorException.IExecutorException ex),

	void mapPartitionsWithIndex(1: ISource.ISource src, 2:  bool preservesPartitioning) throws (1:IExecutorException.IExecutorException ex),

	void applyPartition(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void groupBy(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void groupBy2(1: ISource.ISource src, 2:  i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	void sort(1: bool ascending) throws (1:IExecutorException.IExecutorException ex),

	void sort2(1: bool ascending, 2:  i64 numPartitions) throws (1:IExecutorException.IExecutorException ex),

	void sortBy(1: ISource.ISource src, 2:  bool ascending) throws (1:IExecutorException.IExecutorException ex),

	void sortBy3(1: ISource.ISource src, 2:  bool ascending, 3:  i64 numPartitions) throws (1:IExecutorException.IExecutorException ex);
}





