namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.shuffle


include "../IRemoteException.thrift"

service IShuffleModule{
	void createSplits() throws (1:IRemoteException.IRemoteException ex),
	void nextSplit(1: string host, 2: i32 port, 3: i64 length, 4: bool local) throws (1:IRemoteException.IRemoteException ex),
	void finishSplits() throws (1:IRemoteException.IRemoteException ex);
}