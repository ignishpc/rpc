namespace cpp ignis.rpc
namespace java org.ignis.rpc
namespace py ignis.rpc.exception


exception IRemoteException{
	1: required string name;
	2: required string stack;
}
