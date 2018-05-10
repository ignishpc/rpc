namespace cpp ignis.rpc
namespace java org.ignis.rpc
namespace py ignis.rpc.exception


exception IRemoteException{
	1: required string message;
	2: required string stack;
}
