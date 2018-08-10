namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.keys

cpp_include "<unordered_map>"

include "../IRemoteException.thrift"
include "../ISourceFunction.thrift"

service IKeysModule{
	map cpp_type "std::unordered_map<int64_t, int64_t>"  <i64, i64> getKeys(1: bool single) throws (1:IRemoteException.IRemoteException ex),
	void sendPairs(1: string addr, 2: list<i64> keys_id) throws (1:IRemoteException.IRemoteException ex),
	void joinPairs() throws (1:IRemoteException.IRemoteException ex),
	void reset() throws (1:IRemoteException.IRemoteException ex);
}