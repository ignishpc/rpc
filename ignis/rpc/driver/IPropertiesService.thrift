namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.properties


include "../IRemoteException.thrift"

service IPropertiesService{
	i64 newInstance();
	string setProperty(1: i64 id, 2: string key, 3: string value)throws (1:IRemoteException.IRemoteException ex),
	string getProperty(1: i64 id, 2: string key)throws (1:IRemoteException.IRemoteException ex),
	bool isProperty(1: i64 id, 2: string key)throws (1:IRemoteException.IRemoteException ex),
	map<string, string> toMap(1: i64 id)throws (1:IRemoteException.IRemoteException ex),
	void fromMap(1: i64 id, 2:map<string, string> _map)throws (1:IRemoteException.IRemoteException ex),
	void toFile(1: i64 id, 2: string path)throws (1:IRemoteException.IRemoteException ex),
	void fromFile(1: i64 id, 2: string path)throws (1:IRemoteException.IRemoteException ex);
	void reset(1: i64 id)throws (1:IRemoteException.IRemoteException ex);
}