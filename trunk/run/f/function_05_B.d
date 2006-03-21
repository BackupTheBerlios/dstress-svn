// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-03-09
// @uri@	news:bug-30-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_DFLAGS__ run/f/function_05_A.d

module /*dstress.*/run.f.function_05_B;
import /*dstress.*/run.f.function_05_A;

class C{
}

C createC(){
	return new C();
}

alias C function() aliasFunc;

int main(){
	if(!func(&createC)){
		assert(0);
	}

	return 0;
}
