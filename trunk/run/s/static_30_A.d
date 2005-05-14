// $HeadURL$
// $Date$
// $Author$

// @author@	xs0 <xs0@xs0.com>
// @date@	2005-05-12
// @uri@	news:d5vnlr$9h6$1@digitaldaemon.com

module dstress.run.s.static_30_A;

class Foo{
	int hash(){
		return 0;
	}

	static int hash(int val){
		return val+1;
	}
}

class Bar{
	int test(int i){
		return Foo.hash(i);
	}
}

int main(){
	assert(Foo.hash(10)==11);
	Bar b = new Bar;
	assert(b.test(10)==11);
	return 0;
}
