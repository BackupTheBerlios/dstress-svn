// $HeadURL$
// $Date$
// $Author$

module dstress.run.static_02;

class MyClass{
	static int check(){
		return 9;
	}
}

int main(){
	MyClass c;
	return c.check() - 9;
}
