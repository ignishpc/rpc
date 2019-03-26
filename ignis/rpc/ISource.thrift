namespace cpp ignis.rpc
namespace java org.ignis.rpc
namespace py ignis.rpc.source

union IEncoded {
	1: string name,
	2: binary bytes;
}

struct ISource{
	1: required IEncoded obj,
	2: map <string, binary> params = {};
}