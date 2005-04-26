// $HeadURL$
// $Date$
// $Author$

// @author@	brad beveridge <brad@nowhere.com>
// @date@	2005-04-25
// @uri@	news:d4ie14$1evb$1@digitaldaemon.com

module dstress.run.sizeof_15;

size_t res;

struct Foo{
	float a;
}

struct Bar{
	void test(){
		assert((new Foo).a.sizeof==res);
	}
}

int main(){
	res=Foo.a.sizeof;
	Bar* b = new Bar;
	b.test();
	return 0;
}
