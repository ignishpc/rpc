namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.cluster


include "../IRemoteException.thrift"

service IClusterService{
	i64 newInstance() throws (1:IRemoteException.IRemoteException ex),
	void keep(1: i64 cluster) throws (1:IRemoteException.IRemoteException ex);
}