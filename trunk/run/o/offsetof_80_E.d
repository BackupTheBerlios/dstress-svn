// $HeadURL$
// $Date$
// $Author$

// @author@	xs0 <xs0@xs0.com>
// @date@	2005-08-10
// @uri@	news:dddj2k$lrr$1@digitaldaemon.com
// @desc@	offsetof doesn't work on method-local struct members

module dstress.run.o.offsetof_80_E;

int outer(){
	int test(){
		class Innner{
			int i;
	        }
	        
		return Innner.i.offsetof;
	}
	
	return test();
}

int main(){
	outer();
	return 0;
}