// $HeadURL$
// $Date$
// $Author$

// @author@	Karen Lanrap <karen@digitaldaemon.com>
// @date@	2006-09-27
// @uri@	news:Xns984BB274364EFdigitaldaemoncom@63.105.9.61
// @desc@	wrong function overload

// __DSTRESS_ELINE__ 30

module dstress.nocompile.e.enum_50_D;

enum Color{
	RED
}

enum Age{
	OLD
}

class C{
	void foo(Color c){
		assert(0);
	}
}

int main(){
	C c = new C();
	c.foo(Age.OLD);

	return 0;
}
