// $HeadURL$
// $Date$
// $Author$

// @author@	<jarrett.billingsley@gmail.com>
// @date@	2006-03-11
// @uri@	news:bug-36-3@http.d.puremagic.com/bugzilla/

module dstress.run.t.typedef_13_F;

bool status = false;

enum Enum {
        ONE = 1,
	TWO,
	THREE
}

typedef void function(Enum) EnumDG;

class A {
	void fork(EnumDG dg){
		dg(Enum.TWO);
	}

}

void test(Enum e){
	if(e != Enum.TWO){
		assert(0);
	}
	status = true;
}

int main(){
	if(status){
		assert(0);
	}

	A a = new A();
	a.fork(&test);

	if(!status){
		assert(0);
	}

	return 0;
}

