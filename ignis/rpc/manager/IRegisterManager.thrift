namespace cpp ignis.rpc.manager
namespace java org.ignis.rpc.manager
namespace py ignis.rpc.manager.register


include "../IRemoteException.thrift"

service IRegisterManager{
	void execute(1: i64 id, 2: string script) throws (1:IRemoteException.IRemoteException ex),
	void destroy(1: i64 id) throws (1:IRemoteException.IRemoteException ex);
}

