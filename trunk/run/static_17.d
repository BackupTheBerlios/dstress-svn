// $HeadURL$
// $Date$
// $Author$

// @author@ 	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-11-09
// @uri@	news:cmq61m$5rn$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2218

module dstress.run.static_17;

class MyClass{
	static{
		int foo(){
			return 1;
		}
	}

	static int bar(){
		return foo()+3;
	}
}

int main(){
	assert(MyClass.bar()==4);
	return 0;
}
