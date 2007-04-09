// $HeadURL$
// $Date$
// $Author$

// @author@	brad beveridge <brad@nowhere.com>
// @date@	2005-04-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3816

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
