namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.reducer

cpp_include "<unordered_map>"

include "../IRemoteException.thrift"
include "../ISourceFunction.thrift"

service IReducerModule{
	void reduceByKey(1: ISourceFunction.ISourceFunction funct) throws (1:IRemoteException.IRemoteException ex),
	void groupByKey() throws (1:IRemoteException.IRemoteException ex);
}