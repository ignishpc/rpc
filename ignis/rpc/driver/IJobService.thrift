namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.job


include "../IRemoteException.thrift"
include "IDataService.thrift"

struct IJobId{
	1: required i64 cluster;
	2: required i64 job;
}

service IJobService{
	IJobId newInstance(1: i64 cluster, 2: string type) throws (1:IRemoteException.IRemoteException ex),
	IJobId newInstance3(1: i64 cluster, 2: string type, 3: i64 properties) throws (1:IRemoteException.IRemoteException ex),
	void setName(1: IJobId job, 2: string name) throws (1:IRemoteException.IRemoteException ex),
	void keep(1: IJobId job)  throws (1:IRemoteException.IRemoteException ex),
	IDataService.IDataId importData(1: IJobId job, 2: IDataService.IDataId data) throws (1:IRemoteException.IRemoteException ex),
	IDataService.IDataId readFile(1: IJobId job, 2: string path) throws (1:IRemoteException.IRemoteException ex);
}