// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-03-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=30

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
