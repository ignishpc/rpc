namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.server


include "../IRemoteException.thrift"

service IServerModule{
	void updateProperties(1: map<string, string> properties) throws (1:IRemoteException.IRemoteException ex),
	void stop() throws (1:IRemoteException.IRemoteException ex),
	bool test() throws (1:IRemoteException.IRemoteException ex);
}

