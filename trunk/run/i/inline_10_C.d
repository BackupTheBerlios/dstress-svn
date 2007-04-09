// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathix@dprogramming.com>
// @date@	2005-05-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4114
// @desc@	-inline calling wrong virtual function

module dstress.run.i.inline_10_C;

class Base{
	int test(){
		return 1;
	}
}

class Derived : Base{
	int test(){
		return 2;
	}

	int baseTest(){
		return super.test();
	}
}

int main(){
	Base b = new Base();
	assert(b.test()==1);

	Derived f = new Derived();
	assert(f.test()==2);
	assert(f.baseTest()==1);
	return 0;
}
