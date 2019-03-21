namespace cpp ignis.rpc
namespace java org.ignis.rpc
namespace py ignis.rpc.source


struct ISource{
	1: string name,
	2: binary bytes,
	3: map <string, binary> _args;
}