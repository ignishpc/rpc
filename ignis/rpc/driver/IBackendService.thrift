namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.backend


include "IDriverException.thrift"

service IBackendService{
	void stop() throws (1:IDriverException.IDriverException ex),
}

