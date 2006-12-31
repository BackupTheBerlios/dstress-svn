// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-03-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=30

module dstress.run.f.function_05_E;

class C{
}

C createC(){
	return new C();
}

C func(aliasFunc f){
	return f();
}

alias C function() aliasFunc;

int main(){
	if(!func(&createC)){
		assert(0);
	}

	return 0;
}
