namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.storage


include "../IRemoteException.thrift"

service IStorageModule{
	void cache(1: i64 id, 2: string storage) throws (1:IRemoteException.IRemoteException ex),
	void uncache(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	void load(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
}