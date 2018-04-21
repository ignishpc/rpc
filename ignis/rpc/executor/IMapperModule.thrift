namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.mapper


include "../IRemoteException.thrift"
include "IFunction.thrift"

service IMapperModule{
	void orderedMap(1: IFunction.IFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void unorderedMap(1: IFunction.IFunction funct) throws (1:IRemoteException.IRemoteException ex);
}