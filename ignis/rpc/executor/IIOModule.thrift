namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.io
namespace go ignis.rpc.executor


include "../IExecutorException.thrift"
include "../ISource.thrift"

service IIOModule{

	void loadClass(1: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),
	
	void loadLibrary(1: string path) throws (1:IExecutorException.IExecutorException ex),

	i64 partitionCount() throws (1:IExecutorException.IExecutorException ex),

	list<i64> countByPartition() throws (1:IExecutorException.IExecutorException ex),

	i64 partitionApproxSize() throws (1:IExecutorException.IExecutorException ex),

	void plainFile(1: string path, 2: string delim) throws (1:IExecutorException.IExecutorException ex),

	void plainFile3(1: string path, 2: i64 minPartitions, 3: string delim) throws (1:IExecutorException.IExecutorException ex),

	void textFile(1: string path) throws (1:IExecutorException.IExecutorException ex),

	void textFile2(1: string path, 2: i64 minPartitions) throws (1:IExecutorException.IExecutorException ex),

	void partitionObjectFile(1: string path, 2: i64 first, 3: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void partitionObjectFile4(1: string path, 2: i64 first, 3: i64 partitions, 4: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void partitionTextFile(1: string path, 2: i64 first, 3: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void partitionJsonFile4a(1: string path, 2: i64 first, 3: i64 partitions, 4: bool objectMapping) throws (1:IExecutorException.IExecutorException ex),

	void partitionJsonFile4b(1: string path, 2: i64 first, 3: i64 partitions, 4: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void saveAsObjectFile(1: string path, 2: i8 compression, 3: i64 first) throws (1:IExecutorException.IExecutorException ex),

	void saveAsTextFile(1: string path, 2: i64 first) throws (1:IExecutorException.IExecutorException ex),

	void saveAsJsonFile(1: string path, 2: i64 first, 3: bool pretty) throws (1:IExecutorException.IExecutorException ex);
}
