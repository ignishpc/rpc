namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.exception
namespace go ignis.rpc.driver


exception IDriverException{
	1: required string message;
	2: required string _cause;
}
