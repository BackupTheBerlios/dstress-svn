// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 13

module dstress.nocompile.static_10;

class MyClass{
	int status;
	
	static void check(){
		this.status++;
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
