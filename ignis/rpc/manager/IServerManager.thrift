namespace cpp ignis.rpc.manager
namespace java org.ignis.rpc.manager
namespace py ignis.rpc.manager.server


include "../IRemoteException.thrift"

service IServerManager{
	void stop() throws (1:IRemoteException.IRemoteException ex),
	bool test() throws (1:IRemoteException.IRemoteException ex);
}

