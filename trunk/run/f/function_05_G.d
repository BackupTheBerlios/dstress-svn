// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-03-09
// @uri@	news:bug-30-3@http.d.puremagic.com/bugzilla/

module dstress.run.f.function_05_G;

C createC(){
	return new C();
}

alias C function() aliasFunc;

class C{
}

C func(aliasFunc f){
	return f();
}

int main(){
	if(!func(&createC)){
		assert(0);
	}

	return 0;
}
