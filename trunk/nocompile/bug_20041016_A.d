// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-10-16
// @uri@	news:ckpj76$2r3m$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2117

module dstress.nocompile.bug_20041016_A;

class Conversion(T,U){
	typedef char Small;
	class Big{
		char[2] dummy;
	}
	static Small Test(U u);
	static Big Test(...);
	static T MakeT();
	enum {
		exists = (Test(MakeT())).sizeof == (Small).sizeof
	}
}

void variadicDummy(...){
}

int main (){
	variadicDummy(Conversion!(double,int).exists);
	return 0;
}
