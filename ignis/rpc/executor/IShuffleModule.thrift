namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.shuffle


include "../IRemoteException.thrift"

service IShuffleModule{
	void createSplits() throws (1:IRemoteException.IRemoteException ex),
	void nextSplit(1: string addr, 2: i64 length) throws (1:IRemoteException.IRemoteException ex),
	void finishSplits() throws (1:IRemoteException.IRemoteException ex),
	void joinSplits(1: list<i64> order) throws (1:IRemoteException.IRemoteException ex);
}