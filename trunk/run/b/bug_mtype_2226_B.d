// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeirosATgmail@SPAM.com>
// @date@	2006-06-24
// @uri@	news:e7hus2$1egl$1@digitaldaemon.com

module dstress.run.b.bug_mtype_2226_B;

int status;

class C{
	void bar(){
		status++;
	}
}

template foo(){
	typeof( {} ) foo;
}

int main(){
	mixin foo!();

	C c = new C();

	foo = &c.bar;

	if(status != 0){
		assert(0);
	}
	foo();
	if(status != 1){
		assert(0);
	}

	return 0;
}
