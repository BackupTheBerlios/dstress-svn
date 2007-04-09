// $HeadURL$
// $Date$
// $Author$

// @author@	Karen Lanrap <karen@digitaldaemon.com>
// @date@	2006-09-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8501
// @desc@	wrong function overload

// __DSTRESS_ELINE__ 30

module dstress.nocompile.e.enum_50_E;

enum Color{
	RED
}

enum Age{
	OLD
}

struct S{
	void foo(Color c){
		assert(0);
	}
}

int main(){
	S s;
	s.foo(Age.OLD);

	return 0;
}
