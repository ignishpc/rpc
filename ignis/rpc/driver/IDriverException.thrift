namespace cpp ignis.rpc
namespace java org.ignis.rpc
namespace py ignis.rpc.driver.exception


exception IDriverException{
	1: required string message;
	2: required string _cause;
}
