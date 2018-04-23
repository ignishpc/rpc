namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.reducer


include "../IRemoteException.thrift"
include "IFunction.thrift"

service IReducerModule{
	list<i64> getKeys(1: IFunction.IFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void setExecutorKeys(1: string host, 2: i32 port, 3: list<i64> keys_id, 4: i64 msg_id) throws (1:IRemoteException.IRemoteException ex),
	void joinData(1: list<i64> msg_ids) throws (1:IRemoteException.IRemoteException ex),
	void reduceByKey() throws (1:IRemoteException.IRemoteException ex),
	void reset() throws (1:IRemoteException.IRemoteException ex);
}