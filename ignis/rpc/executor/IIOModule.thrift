namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.io


include "../IExecutorException.thrift"
include "../ISource.thrift"

service IIOModule{

	i64 partitionCount() throws (1:IExecutorException.IExecutorException ex),

	i64 partitionApproxSize() throws (1:IExecutorException.IExecutorException ex),

	void textFile(1: string path) throws (1:IExecutorException.IExecutorException ex),

	void textFile2(1: string path, 2: i64 minPartitions) throws (1:IExecutorException.IExecutorException ex),

	void partitionObjectFile(1: string path, 2: i64 first, 3: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void partitionObjectFile4(1: string path, 2: i64 first, 3: i64 partitions, 4: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void partitionTextFile(1: string path, 2: i64 first, 3: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void partitionJsonFile(1: string path, 2: i64 first, 3: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void partitionJsonFile4(1: string path, 2: i64 first, 3: i64 partitions, 4: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void saveAsObjectFile(1: string path, 2: i8 compression, 3: i64 first) throws (1:IExecutorException.IExecutorException ex),

	void saveAsTextFile(1: string path, 2: i64 first) throws (1:IExecutorException.IExecutorException ex),

	void saveAsJsonFile(1: string path, 2: i64 first, 3: bool pretty) throws (1:IExecutorException.IExecutorException ex);
}
