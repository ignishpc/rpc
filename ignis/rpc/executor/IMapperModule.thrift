namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.mapper


include "../IRemoteException.thrift"
include "../IFunction.thrift"

service IMapperModule{
	void _map(1: IFunction.IFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void streamingMap(1: IFunction.IFunction funct, 2: bool ordered) throws (1:IRemoteException.IRemoteException ex);
}