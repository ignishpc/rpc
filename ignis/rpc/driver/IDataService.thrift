namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.data


include "../IRemoteException.thrift"
include "../ISource.thrift"

struct IDataId{
	1: required i64 cluster;
	2: required i64 job;
	3: required i64 data;
}

service IDataService{
	void setName(1: IDataId data, 2: string name) throws (1:IRemoteException.IRemoteException ex),
	IDataId _map(1: IDataId data, 2: ISource.ISource _function) throws (1:IRemoteException.IRemoteException ex),
	IDataId flatmap(1: IDataId data, 2: ISource.ISource _function) throws (1:IRemoteException.IRemoteException ex),
	IDataId filter(1: IDataId data, 2: ISource.ISource _function) throws (1:IRemoteException.IRemoteException ex),
	IDataId keyBy(1: IDataId data, 2: ISource.ISource _function) throws (1:IRemoteException.IRemoteException ex),
	IDataId streamingMap(1: IDataId data, 2: ISource.ISource _function, 3: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	IDataId streamingFlatmap(1: IDataId data, 2: ISource.ISource _function, 3: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	IDataId streamingFilter(1: IDataId data, 2: ISource.ISource _function, 3: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	IDataId streamingKeyBy(1: IDataId data, 2: ISource.ISource _function, 3: bool ordered) throws (1:IRemoteException.IRemoteException ex),
	IDataId reduceByKey(1: IDataId data, 2: ISource.ISource _function) throws (1:IRemoteException.IRemoteException ex),
	IDataId values(1: IDataId data) throws (1:IRemoteException.IRemoteException ex),
	IDataId shuffle(1: IDataId data) throws (1:IRemoteException.IRemoteException ex),
	IDataId parallelize() throws (1:IRemoteException.IRemoteException ex),
	binary take(1: IDataId data, 2: i64 n, 3: bool light) throws (1:IRemoteException.IRemoteException ex),
	binary takeSample(1: IDataId data, 2: i64 n, 3: bool withRemplacement, 4: i32 seed, 5: bool light) throws (1:IRemoteException.IRemoteException ex),
	binary collect(1: IDataId data, 2: bool light) throws (1:IRemoteException.IRemoteException ex),
	void saveAsTextFile(1: IDataId data, 2: string path, 3: bool join) throws (1:IRemoteException.IRemoteException ex),
	void saveAsJsonFile(1: IDataId data, 2: string path, 3: bool join) throws (1:IRemoteException.IRemoteException ex),
	void cache(1: IDataId data)  throws (1:IRemoteException.IRemoteException ex);
	void uncache(1: IDataId data)  throws (1:IRemoteException.IRemoteException ex);
}