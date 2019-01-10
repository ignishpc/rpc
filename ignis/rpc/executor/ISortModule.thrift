namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.sort


include "../IRemoteException.thrift"
include "../ISource.thrift"

service ISortModule{
	void localCustomSort(1: ISource.ISource funct, 2: bool ascending) throws (1:IRemoteException.IRemoteException ex),
	void localSort(1: bool ascending) throws (1:IRemoteException.IRemoteException ex),
	void sampling(1: i64 sampleSize, 2: i64 idx, 3: string master) throws (1:IRemoteException.IRemoteException ex),
	void getPivots() throws (1:IRemoteException.IRemoteException ex),
	void findPivots(1: list<string> nodes) throws (1:IRemoteException.IRemoteException ex),
	void exchangePartitions(1: i64 idx, 2: list<string> nodes) throws (1:IRemoteException.IRemoteException ex),
	void mergePartitions() throws (1:IRemoteException.IRemoteException ex);
}