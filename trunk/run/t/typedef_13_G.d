// $HeadURL$
// $Date$
// $Author$

// @author@	<jarrett.billingsley@gmail.com>
// @date@	2006-03-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=36

module dstress.run.t.typedef_13_G;

bool status = false;

enum Enum {
        ONE = 1,
	TWO,
	THREE
}

class A {
	typedef void function(Enum) EnumDG;
	
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

