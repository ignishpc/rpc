namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.mapper


include "../IRemoteException.thrift"
include "IFunction.thrift"

service IMapperModule{
	void onemap(1: i64 data_id, 2: i64 ge_data_id, 3: IFunction.IFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void flatmap(1: i64 data_id, 2: i64 ge_data_id, 3: IFunction.IFunction funct) throws (1:IRemoteException.IRemoteException ex);
}