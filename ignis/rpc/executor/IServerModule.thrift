namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.server


include "../IRemoteException.thrift"

service IServerModule{
	void setProperties(1: map<string, string> properties);
	void stop();
	bool test();
}

