namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.sort


include "../IRemoteException.thrift"
include "../ISource.thrift"

service ISortModule{
	void localCustomSort(1: ISource.ISource funct, 2: bool ascending) throws (1:IRemoteException.IRemoteException ex),
	void localSort(1: bool ascending) throws (1:IRemoteException.IRemoteException ex);
}