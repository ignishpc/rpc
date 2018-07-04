namespace cpp ignis.rpc.manager
namespace java org.ignis.rpc.manager
namespace py ignis.rpc.manager.file


include "../IRemoteException.thrift"

service IFileManager{
	void sendFile(1: string path, 2: binary bytes) throws (1:IRemoteException.IRemoteException ex),
	void sendFileAndExtract(1: string path, 2: binary bytes) throws (1:IRemoteException.IRemoteException ex);
}

