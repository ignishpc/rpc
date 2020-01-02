namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.worker


include "IDriverException.thrift"
include "IDataFrameService.thrift"
include "../ISource.thrift"

struct IWorkerId{
	1: required i64 cluster;
	2: required i64 worker;
}

service IWorkerService{
	IWorkerId newInstance(1: i64 id, 2: string type) throws (1:IDriverException.IDriverException ex),
	IWorkerId newInstance3a(1: i64 id, 2: string name, 3: string type) throws (1:IDriverException.IDriverException ex),
	IWorkerId newInstance3b(1: i64 id, 2: string type, 3: i32 cores) throws (1:IDriverException.IDriverException ex),
	IWorkerId newInstance4(1: i64 id, 2: string name, 3: string type, 4: i32 cores) throws (1:IDriverException.IDriverException ex),
	void setName(1: IWorkerId id, 2: string name) throws (1:IDriverException.IDriverException ex),
	IDataFrameService.IDataFrameId parallelize(1: IWorkerId id) throws (1:IDriverException.IDriverException ex),
	IDataFrameService.IDataFrameId parallelize2(1: IWorkerId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameService.IDataFrameId importDataFrame(1: IWorkerId id, 2: IDataFrameService.IDataFrameId data) throws (1:IDriverException.IDriverException ex),
	IDataFrameService.IDataFrameId importDataFrame3(1: IWorkerId id, 2: ISource.ISource src, 3: IDataFrameService.IDataFrameId data) throws (1:IDriverException.IDriverException ex),
	IDataFrameService.IDataFrameId textFile(1: IWorkerId id, 2: string path, 3: i64 partitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameService.IDataFrameId partitionObjectFile(1: IWorkerId id, 2: string path, 3: i64 partitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameService.IDataFrameId partitionObjectFile4(1: IWorkerId id, 2: string path, 3: i64 partitions, 4: ISource.ISource src) throws (1:IDriverException.IDriverException ex);
}