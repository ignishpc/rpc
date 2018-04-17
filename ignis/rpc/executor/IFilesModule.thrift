namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.files


include "../IRemoteException.thrift"

service IFilesModule{
	void readFile(1: string path, 2: i64 offset, 3: i64 len, 4: i64 lines) throws (1:IRemoteException.IRemoteException ex),
	void saveFile(1: string path, 2: bool joined) throws (1:IRemoteException.IRemoteException ex),
	void saveJson(1: string path, 2: bool joined) throws (1:IRemoteException.IRemoteException ex);
}