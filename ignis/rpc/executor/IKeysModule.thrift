namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.keys

cpp_include "<unordered_map>"

include "../IRemoteException.thrift"
include "../ISource.thrift"

struct IExecutorKeys{
	1: required i64 msg_id,
	2: required string addr,
	3: required list<i64> keys;
}

service IKeysModule{
	list<i64> getKeys() throws (1:IRemoteException.IRemoteException ex),
	map cpp_type "std::unordered_map<int64_t, int64_t>"  <i64, i64> getKeysWithCount() throws (1:IRemoteException.IRemoteException ex),
	void prepareKeys(1: list<IExecutorKeys> executorKeys) throws (1:IRemoteException.IRemoteException ex),
	void collectKeys() throws (1:IRemoteException.IRemoteException ex),
	void reduceByKey(1: ISource.ISource funct) throws (1:IRemoteException.IRemoteException ex);
}