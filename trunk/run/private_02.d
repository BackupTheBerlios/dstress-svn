// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-11-15
// @uri@	news:cn9vah$1shn$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2270

module dstress.compile.private_02;

class Outer{
	class Inner{
		private this(){
		}
		
		private int i=3;
	}

	int test(){
		Inner io = new Inner();
		return io.i;
	}
}

int main(){
	Outer o = new Outer();
	assert(o.test()==3);
	return 0;
}
