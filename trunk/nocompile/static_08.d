// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.static_08;

class MyClass{
	int status;
	static int check(){
		return status;
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
