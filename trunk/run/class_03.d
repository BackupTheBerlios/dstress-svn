// $HeadURL$
// $Date$
// $Author$

module dstress.run.class_03;

class MyClass{
	int check( int x){
		x = (x+1) * 2;
		return x;
	}
}

int main(){
	MyClass c = new MyClass();
	assert ( c.check(1) == 4 );
	return 0;	
}
