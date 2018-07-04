namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.cluster


include "../IRemoteException.thrift"

service IClusterService{
	i64 newInstance(1: i64 properties) throws (1:IRemoteException.IRemoteException ex),
	i32 sendFiles(1: i64 cluster, 2: string source, 3: string target) throws (1:IRemoteException.IRemoteException ex),
	i32 sendCompressedFile(1: i64 cluster, 2: string source, 3: string target) throws (1:IRemoteException.IRemoteException ex),
	void keep(1: i64 cluster) throws (1:IRemoteException.IRemoteException ex);
}