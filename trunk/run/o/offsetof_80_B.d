// $HeadURL$
// $Date$
// $Author$

// @author@	xs0 <xs0@xs0.com>
// @date@	2005-08-10
// @uri@	news:dddj2k$lrr$1@digitaldaemon.com
// @desc@	offsetof doesn't work on method-local struct members

module dstress.run.o.offsetof_80_B;

class Outer{
	int test(){
		struct Innner{
			int i;
	        }
	        
		return Innner.i.offsetof;
	}
}

int main(){
	Outer o = new Outer;
	o.test();
	return 0;
}