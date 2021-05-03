namespace cpp ignis.rpc
namespace java org.ignis.rpc
namespace py ignis.rpc.executor.exception
namespace go ignis.rpc


exception IExecutorException{
	1: required string message;
	2: required string _cause;
}
