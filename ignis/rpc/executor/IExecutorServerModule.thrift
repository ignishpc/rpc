namespace cpp ignis.rpc.executor
namespace java org.ignis.rpc.executor
namespace py ignis.rpc.executor.server
namespace go ignis.rpc.executor


include "../IExecutorException.thrift"

service IExecutorServerModule{
	void start(1: map<string, string> properties) throws (1:IExecutorException.IExecutorException ex),

	void stop() throws (1:IExecutorException.IExecutorException ex),

	bool test() throws (1:IExecutorException.IExecutorException ex);
}
