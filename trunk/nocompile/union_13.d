// $HeadURL$
// $Date$
// $Author$

// @author@	Geoff Hickey <Geoff_member@pathlink.com>
// @date@	2004-12-02
// @uri@	news:coo7ep$2089$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2429

module dstress.nocompile.union_13;

class MyClass{
	union NamedUnion{
		int i;
	}
}

int main(){
	MyClass s = new MyClass();
	s.NamedUnion.i = 1;
	return 0;
}


