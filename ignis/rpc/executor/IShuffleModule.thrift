namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.shuffle


include "../IRemoteException.thrift"

struct ISplit{
	1: required i64 msg_id,
	2: required string addr;
	3: required i64 length;
}

service IShuffleModule{
	void createSplits(1: list<ISplit> splits) throws (1:IRemoteException.IRemoteException ex), 
	void joinSplits(1: list<i64> order) throws (1:IRemoteException.IRemoteException ex);
	
}