namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.files


include "../IRemoteException.thrift"

service IFilesModule{
	void readFile(1: i64 data_id, 2: string path, 3: i64 offset, 4: i64 len, 5: i64 lines) throws (1:IRemoteException.IRemoteException ex),
	void saveFile(1: i64 data_id, 2: string path, 3: bool joined) throws (1:IRemoteException.IRemoteException ex),
	void saveJson(1: i64 data_id, 2: string path) throws (1:IRemoteException.IRemoteException ex);
}