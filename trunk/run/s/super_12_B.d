// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-08-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4851

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.s.super_12_B;

int statusA;
int statusB;

class A{
	class B:A{
	}

	B b;

	this(){
		statusA++;
		assert(statusA<100);
		
		b = new B;
	}

}

int main(){
	try{
		statusA = 0;
		statusB = 0;
		
		A a = new A;
	}catch{
		assert(statusA == 100);
		return 0;
	}
	assert(0);
}
