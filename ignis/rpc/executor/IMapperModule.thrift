namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.mapper


include "../IRemoteException.thrift"
include "../ISourceFunction.thrift"

service IMapperModule{
	void _map(1: ISourceFunction.ISourceFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void flatmap(1: ISourceFunction.ISourceFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void filter(1: ISourceFunction.ISourceFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void streamingMap(1: ISourceFunction.ISourceFunction funct, 2: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	void streamingFlatmap(1: ISourceFunction.ISourceFunction funct, 2: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	void streamingFilter(1: ISourceFunction.ISourceFunction funct, 2: bool ordered) throws (1:IRemoteException.IRemoteException ex);
}