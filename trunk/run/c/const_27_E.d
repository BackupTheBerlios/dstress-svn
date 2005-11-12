// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2005-11-08
// @uri@	news:dkpc3m$1d71$1@digitaldaemon.com

module dstress.run.c.const_27_E;

class C{
	const b = a * 2;
	const c = b * 3;
	const int a = 1;
}

int main(){
	assert(C.a == 1);
	assert(C.b == 2);
	assert(C.c == 6);

	return 0;
}
