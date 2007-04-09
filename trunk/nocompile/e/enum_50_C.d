// $HeadURL$
// $Date$
// $Author$

// @author@	Karen Lanrap <karen@digitaldaemon.com>
// @date@	2006-09-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8501
// @desc@	wrong function overload

// __DSTRESS_ELINE__ 29

module dstress.nocompile.e.enum_50_C;

enum Color{
	RED
}

enum Age{
	OLD
}

class C{
	static void foo(Color c){
		assert(0);
	}
}

int main(){
	C.foo(Age.OLD);

	return 0;
}
