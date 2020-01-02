namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.io


include "../IExecutorException.thrift"
include "../ISource.thrift"

service ICommModule{

	string createGroup() throws (1:IExecutorException.IExecutorException ex),

	void joinGroupMembers(1: string group, 2: i64 size) throws (1:IExecutorException.IExecutorException ex),

	void joinToGroup(1: string group, 2: string id) throws (1:IExecutorException.IExecutorException ex),

	bool hasGroup(1: string id) throws (1:IExecutorException.IExecutorException ex),

	void destroyGroup(1: string id) throws (1:IExecutorException.IExecutorException ex),

	void destroyGroups() throws (1:IExecutorException.IExecutorException ex),

	list<binary> getPartitions() throws (1:IExecutorException.IExecutorException ex),

	void setPartitions(1: list<binary> partitions) throws (1:IExecutorException.IExecutorException ex),

	void driverGather(1: string id) throws (1:IExecutorException.IExecutorException ex),

	void driverGather0(1: string id) throws (1:IExecutorException.IExecutorException ex),

	void driverScatter(1: string id) throws (1:IExecutorException.IExecutorException ex);
}
