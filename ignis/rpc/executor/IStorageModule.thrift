namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.storage


include "../IRemoteException.thrift"

service IStorageModule{
	i64 count() throws (1:IRemoteException.IRemoteException ex),
	void cache(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	void uncache(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	void loadCache(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	void saveContext(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	void loadContext(1: i64 id) throws (1:IRemoteException.IRemoteException ex),
	binary take(1: i64 n, 2: bool light) throws (1:IRemoteException.IRemoteException ex),
	binary takeSample(1: i64 n, 2: bool withRemplacement, 3: i32 seed, 4: bool light) throws (1:IRemoteException.IRemoteException ex),
	binary collect(1: bool light) throws (1:IRemoteException.IRemoteException ex);
}