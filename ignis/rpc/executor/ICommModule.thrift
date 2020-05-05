namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.comm


include "../IExecutorException.thrift"
include "../ISource.thrift"

service ICommModule{

	string createGroup() throws (1:IExecutorException.IExecutorException ex),

	void joinGroupMembers(1: string group, 2: i64 id, 3: i64 size) throws (1:IExecutorException.IExecutorException ex),

	void joinToGroup(1: string group, 2: string id) throws (1:IExecutorException.IExecutorException ex),

	bool hasGroup(1: string id) throws (1:IExecutorException.IExecutorException ex),

	void destroyGroup(1: string id) throws (1:IExecutorException.IExecutorException ex),

	void destroyGroups() throws (1:IExecutorException.IExecutorException ex),

	i8 getProtocol() throws (1:IExecutorException.IExecutorException ex),

	list<binary> getPartitions(1: i8 protocol) throws (1:IExecutorException.IExecutorException ex),

	list<binary> getPartitions2(1: i8 protocol, 2: i64 minPartitions) throws (1:IExecutorException.IExecutorException ex),

	void setPartitions(1: list<binary> partitions) throws (1:IExecutorException.IExecutorException ex),
	
	void setPartitions2(1: list<binary> partitions, 2: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void driverGather(1: string id, 2: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void driverGather0(1: string id, 2: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex),

	void driverScatter(1: string id, 2: i64 partitions) throws (1:IExecutorException.IExecutorException ex),

	void driverScatter3(1: string id, 2: i64 partitions, 3: ISource.ISource src) throws (1:IExecutorException.IExecutorException ex);
}
