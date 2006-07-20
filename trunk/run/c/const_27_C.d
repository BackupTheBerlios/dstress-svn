// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2005-11-08
// @uri@	news:dkpc3m$1d71$1@digitaldaemon.com

module dstress.run.c.const_27_C;

class C{
	const c = b * 3;
	const int a = 1;
	const b = a * 2;
}

int main(){
	if(C.a != 1){
		assert(0);
	}
	if(C.b != 2){
		assert(0);
	}
	if(C.c != 6){
		assert(0);
	}

	return 0;
}
