// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2005-02-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2866

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_19;

class MyClass{

	this(){
	}

	private int g() { 
		return 1;
	}

	invariant(){
		assert(g()==1);
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
