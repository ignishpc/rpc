namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.comm


include "../IExecutorException.thrift"
include "../ISource.thrift"

service ICommModule{

	string openGroup() throws (1:IExecutorException.IExecutorException ex),

	void closeGroup() throws (1:IExecutorException.IExecutorException ex),

	void joinToGroup(1: string id, 2: bool leader) throws (1:IExecutorException.IExecutorException ex),

	void joinToGroupName(1: string id, 2: bool leader, 3: string name) throws (1:IExecutorException.IExecutorException ex),

	bool hasGroup(1: string name) throws (1:IExecutorException.IExecutorException ex),

	void destroyGroup(1: string name) throws (1:IExecutorException.IExecutorException ex),

	void destroyGroups() throws (1:IExecutorException.IExecutorException ex),

	i8 getProtocol() throws (1:IExecutorException.IExecutorException ex),

	list<binary> getPartitions(1: i8 protocol) throws (1:IExecutorException.IExecutorException ex),

	list<binary> getPartitions2(1: i8 protocol, 2: i64 minPartitions) throws (1:IExecutorException.IExecutorException ex),

	void setPartitions(1: list<binary> partitions) throws (1:IExecutorException.IExecutorException ex),
	
	void setPartitions2(1: list<binary> partitions, 2: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void newEmptyPartitions(1: i64 n) throws (1:IExecutorException.IExecutorException ex),

	void newEmptyPartitions2(1: i64 n, 5: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void driverGather(1: string group, 2: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void driverGather0(1: string group, 2: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void driverScatter(1: string group, 2: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void driverScatter3(1: string group, 2: i64 partitions, 3: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	i32 enableMultithreading(1: string group) throws (1:IExecutorException.IExecutorException ex),

	void send(1: string group, 2: i64 partition, 3: i64 dest, 4: i32 thread)  throws (1:IExecutorException.IExecutorException ex),

	void recv(1: string group, 2: i64 partition, 3: i64 source, 4: i32 thread)  throws (1:IExecutorException.IExecutorException ex);
}
