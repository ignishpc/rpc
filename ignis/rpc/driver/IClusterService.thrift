namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.cluster


include "IDriverException.thrift"

service IClusterService{
	i64 newInstance0() throws (1:IDriverException.IDriverException ex),
	i64 newInstance1a(1: string name) throws (1:IDriverException.IDriverException ex),
	i64 newInstance1b(1: i64 properties) throws (1:IDriverException.IDriverException ex),
	i64 newInstance2(1: string name, 2: i64 properties) throws (1:IDriverException.IDriverException ex),
	void setName(1: i64 id, 2: string name) throws (1:IDriverException.IDriverException ex),
	void execute(1: i64 id, 2: list<string> cmd) throws (1:IDriverException.IDriverException ex),
	void executeScript(1: i64 id, 2: string script) throws (1:IDriverException.IDriverException ex),
	void sendFile(1: i64 id, 2: string source, 3: string target) throws (1:IDriverException.IDriverException ex),
	void sendCompressedFile(1: i64 id, 2: string source, 3: string target) throws (1:IDriverException.IDriverException ex);
}