// $HeadURL$
// $Date$
// $Author$

// @author@	J Anderson <REMOVEanderson@badmama.com.au>
// @date@	2004-05-01
// @uri@	news:c70jk9$off$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/53

// __DSTRESS_ELINE__ 18

module dstress.nocompile.scope_01;

class MyClass{

	struct MyStruct{
		int test(){
			return status;
		}
	}

	int status;
}
