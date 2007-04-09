// $HeadURL$
// $Date$
// $Author$

// @author@	Kirs <fu@bar.com>
// @date@	2005-04-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3573

module dstress.run.overload_21;

union Foo{
	int init (int x) {
		return 0;
	}

	static int init (long y) {
		return 1;
	}
}

int main(){
	assert(Foo.init(2L)==1);
	Foo* f = new Foo;
	assert(Foo.init(3L)==1);
	assert((*f).init(4L)==1);
	assert((*f).init(5)==0);
	return 0;
}



