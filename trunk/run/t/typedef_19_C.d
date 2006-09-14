// $HeadURL$
// $Date$
// $Author$

// @author@	Anders Runesson <anders@runesson.info>
// @date@	2006-07-16
// @uri@	news:1153058426.5844.3.camel@localhost
// @desc@	typedef, implicit cast, bug or feature?

module dstress.run.t.typedef_19_C;

class A{
	int func(int i){
		return i + 1;
	}
}

typedef A B;

int main(){
	B b = new B();

	if(b.func(2) != 3){
		assert(0);
	}

	return 0;
}
