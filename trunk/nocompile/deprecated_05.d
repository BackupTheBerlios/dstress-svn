// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.deprecated_05;

class MyClass{
	deprecated this(char[] c){
	}
}

int main(){
	MyClass c = new MyClass("abc");
	return 0;
}
