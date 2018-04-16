namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.postman


include "../IRemoteException.thrift"

service IPostmanModule{
	void start() throws (1:IRemoteException.IRemoteException ex),
	void stop() throws (1:IRemoteException.IRemoteException ex),
	void sendAll() throws (1:IRemoteException.IRemoteException ex),
	void clearAll() throws (1:IRemoteException.IRemoteException ex);
}

