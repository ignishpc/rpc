namespace cpp ignis.rpc
namespace java org.ignis.rpc
namespace py ignis.rpc.executor.exception


exception IExecutorException{
	1: required string message;
	2: required string _cause;
}
