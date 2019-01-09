namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.mapper


include "../IRemoteException.thrift"
include "../ISource.thrift"

service IMapperModule{
	void _map(1: ISource.ISource funct) throws (1:IRemoteException.IRemoteException ex),
	void flatmap(1: ISource.ISource funct) throws (1:IRemoteException.IRemoteException ex),
	void filter(1: ISource.ISource funct) throws (1:IRemoteException.IRemoteException ex),
	void keyBy(1: ISource.ISource funct) throws (1:IRemoteException.IRemoteException ex),
	void mapPartition(1: ISource.ISource funct) throws (1:IRemoteException.IRemoteException ex),
	void mapPartitionWithIndex(1: i64 idx, 2: ISource.ISource funct) throws (1:IRemoteException.IRemoteException ex),
	void values() throws (1:IRemoteException.IRemoteException ex),
	void streamingMap(1: ISource.ISource funct, 2: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	void streamingFlatmap(1: ISource.ISource funct, 2: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	void streamingFilter(1: ISource.ISource funct, 2: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	void streamingKeyBy(1: ISource.ISource funct, 2: bool ordered) throws (1:IRemoteException.IRemoteException ex);
}