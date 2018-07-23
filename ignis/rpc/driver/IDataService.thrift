namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.data


include "../IRemoteException.thrift"
include "../ISourceFunction.thrift"

struct IDataId{
	1: required i64 cluster;
	2: required i64 job;
	3: required i64 data;
}

service IDataService{
	void keep(1: IDataId data, 2: i8 level) throws (1:IRemoteException.IRemoteException ex),
	IDataId _map(1: IDataId data, 2: ISourceFunction.ISourceFunction _function) throws (1:IRemoteException.IRemoteException ex),
	IDataId streamingMap(1: IDataId data, 2: ISourceFunction.ISourceFunction _function, 3: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	IDataId reduceByKey(1: IDataId data, 2: ISourceFunction.ISourceFunction _function) throws (1:IRemoteException.IRemoteException ex),
	void saveAsTextFile(1: IDataId data, 2: string path, 3: bool join) throws (1:IRemoteException.IRemoteException ex),
	void saveAsJsonFile(1: IDataId data, 2: string path, 3: bool join) throws (1:IRemoteException.IRemoteException ex);
}