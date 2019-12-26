namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.io


include "../IExecutorException.thrift"
include "../ISource.thrift"

service ICommModule{

	string createGroup() throws (1:IExecutorException.IExecutorException ex),

	void joinGroup(1: string group, 2: bool member) throws (1:IExecutorException.IExecutorException ex),

	void destroyGroup() throws (1:IExecutorException.IExecutorException ex),

	void createDriverGroup() throws (1:IExecutorException.IExecutorException ex),

	void joinDriverGroup(1: string group, 2: bool member, 3: i64 id) throws (1:IExecutorException.IExecutorException ex),

	void destroyDriverGroup(1: i64 id) throws (1:IExecutorException.IExecutorException ex),

	list<binary> getPartitions() throws (1:IExecutorException.IExecutorException ex),

	void setPartitions(1: list<binary> partitions) throws (1:IExecutorException.IExecutorException ex),

	void driverGather(1: i64 id) throws (1:IExecutorException.IExecutorException ex),

	void driverScatter(1: i64 id) throws (1:IExecutorException.IExecutorException ex);
}
