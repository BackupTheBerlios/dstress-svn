// $HeadURL$
// $Date$
// $Author$

// @author@	<jmjmak@utu.invalid.fi>
// @date@	2005-08-31
// @uri@	news:df4t72$27kf$1@digitaldaemon.com

// __DSTRESS_ELINE__ 27

module dstress.nocompile.o.opCmp_06_H;

interface Interface{
	int test(int);
}

class Class : Interface{
	int test(int i){
		return ++i;
	}
}

void main(){
	Interface a = new Class();
	Interface b = new Class();

	assert(a !<>= b);
}