namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.backend
namespace go ignis.rpc.driver


include "IDriverException.thrift"

service IBackendService{
	oneway void stop();
}

