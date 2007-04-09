// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2005-02-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2866

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_21;

class MyClass{

	private int g() { 
		return 1;
	}

	public void check(){
	}

	invariant{
		assert(g()==1);
	}
}

int main(){
	MyClass c = new MyClass();
	c.check();
	return 0;
}
