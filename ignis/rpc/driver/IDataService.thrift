namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.data


include "../IRemoteException.thrift"
include "../IFunction.thrift"

struct IDataId{
	1: required i64 cluster;
	2: required i64 job;
	3: required i64 data;
}

service IDataService{
	void keep(1: IDataId data, 2: i8 level) throws (1:IRemoteException.IRemoteException ex),
	IDataId _map(1: IDataId data, 2: IFunction.IFunction _function) throws (1:IRemoteException.IRemoteException ex),
	IDataId streamingMap(1: IDataId data, 2: IFunction.IFunction _function) throws (1:IRemoteException.IRemoteException ex),
	IDataId reduceByKey(1: IDataId data, 2: IFunction.IFunction _function) throws (1:IRemoteException.IRemoteException ex),
	void saveAsFile(1: IDataId data, 2: string path, 3: bool join) throws (1:IRemoteException.IRemoteException ex);
}