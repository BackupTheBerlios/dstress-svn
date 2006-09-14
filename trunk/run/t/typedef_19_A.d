// $HeadURL$
// $Date$
// $Author$

// @author@	Anders Runesson <anders@runesson.info>
// @date@	2006-07-16
// @uri@	news:1153058426.5844.3.camel@localhost
// @desc@	typedef, implicit cast, bug or feature?

module dstress.run.t.typedef_19_A;

class A{
	int func(int i){
		return i + 1;
	}
}

typedef A B;

class C : B{
	override int func(int i){
		return super.func(i) * 2;
	}
}

int main(){
	C c = new C();

	if(c.func(2) != 6){
		assert(0);
	}

	return 0;
}
