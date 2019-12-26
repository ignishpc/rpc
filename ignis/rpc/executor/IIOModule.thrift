namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.io


include "../IExecutorException.thrift"
include "../ISource.thrift"

service IIOModule{

	i64 partitionCount() throws (1:IExecutorException.IExecutorException ex),

	i64 partitionApproxSize() throws (1:IExecutorException.IExecutorException ex),

	void textFile(1: string path, 2: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void openPartitionObjectFile(1: string path, 2: i64 first, 3: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void openPartitionObjectFileFunction(1: ISource.ISource src, 2: string path, 3: i64 first, 4: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void saveAsPartitionObjectFile(1: string path, 2: i8 compression, 4: i64 first) throws (1:IExecutorException.IExecutorException ex),

	void saveAsTextFile(1: string path, 2: i64 first) throws (1:IExecutorException.IExecutorException ex),

	void saveAsJsonFile(1: string path, 2: i64 first) throws (1:IExecutorException.IExecutorException ex);
}
