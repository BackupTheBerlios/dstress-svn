// $HeadURL$
// $Date$
// $Author$

// @author@	brad beveridge <brad@nowhere.com>
// @date@	2005-04-25
// @uri@	news:d4ie14$1evb$1@digitaldaemon.com

module dstress.run.offsetof_79;

size_t res;

class Foo{
	float a;
}

class Bar{
	void test(){
		assert((new Foo).a.offsetof==res);
	}
}

int main(){
	res=(new Foo).a.offsetof;
	Bar b = new Bar;
	b.test();
	return 0;
}
