namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.backend


include "../IRemoteException.thrift"

service IBackendService{
	void stop() throws (1:IRemoteException.IRemoteException ex),
}

