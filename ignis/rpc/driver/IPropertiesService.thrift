namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.properties


include "IDriverException.thrift"

service IPropertiesService{
	i64 newInstance() throws (1:IDriverException.IDriverException ex),
	i64 newInstance2(1: i64 id) throws (1:IDriverException.IDriverException ex),
	string setProperty(1: i64 id, 2: string key, 3: string value) throws (1:IDriverException.IDriverException ex),
	string getProperty(1: i64 id, 2: string key) throws (1:IDriverException.IDriverException ex),
	string rmProperty(1: i64 id, 2: string key) throws (1:IDriverException.IDriverException ex),
	bool contains(1: i64 id, 2: string key) throws (1:IDriverException.IDriverException ex),
	map<string, string> toMap(1: i64 id, 2: bool defaults) throws (1:IDriverException.IDriverException ex),
	void fromMap(1: i64 id, 2:map<string, string> _map) throws (1:IDriverException.IDriverException ex),
	void load(1: i64 id, 2: string path) throws (1:IDriverException.IDriverException ex),
	void store(1: i64 id, 2: string path) throws (1:IDriverException.IDriverException ex);
	void clear(1: i64 id) throws (1:IDriverException.IDriverException ex);
}