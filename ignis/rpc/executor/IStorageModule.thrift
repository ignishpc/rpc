namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.storage


include "../IRemoteException.thrift"

service IStorageModule{
	i64 count() throws (1:IRemoteException.IRemoteException ex),
	void cache(1: i64 id, 2: string storage) throws (1:IRemoteException.IRemoteException ex),
	void uncache(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	void restore(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	void saveContext(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	void loadContext(1: i64 id) throws (1:IRemoteException.IRemoteException ex);
}