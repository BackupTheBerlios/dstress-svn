// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.static_09;

class MyClass{
	void doIt(){}
	static void check(){
		doIt();
	}
}

int main(){
	MyClass c = new MyClass();

	return 0;
}
