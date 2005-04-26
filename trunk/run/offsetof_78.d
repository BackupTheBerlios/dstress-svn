// $HeadURL$
// $Date$
// $Author$

// @author@	brad beveridge <brad@nowhere.com>
// @date@	2005-04-25
// @uri@	news:d4ie14$1evb$1@digitaldaemon.com

module dstress.run.offsetof_78;

size_t res;

struct Foo{
	float a;
}

struct Bar{
	void test(){
		assert(Foo.a.offsetof==res);
	}
}

int main(){
	res=Foo.a.offsetof;
	Bar* b = new Bar;
	b.test();
	return 0;
}
