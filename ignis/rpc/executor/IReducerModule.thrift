namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.reducer


include "../IRemoteException.thrift"
include "IFunction.thrift"

service IReducerModule{
	list<string> getKeys(1: i64 data_id) throws (1:IRemoteException.IRemoteException ex),
	void setExecutorKeys(1: string host, 2: i32 port, 3: list<i64> keys_id, 4: i64 msg_id) throws (1:IRemoteException.IRemoteException ex),
	void joinData(1: list<i64> msg_ids) throws (1:IRemoteException.IRemoteException ex),
	void reduceByKey(1: i64 data_id, 2: i64 ge_data_id, 3: IFunction.IFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void reset() throws (1:IRemoteException.IRemoteException ex);
}