// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.interface_03;

interface MyInterface{
	void one();
	void two();
}

class MyClass : MyInterface{
	void one(){
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
