// $HeadURL$
// $Date$
// $Author$

// only associative arrays support the InExpression

module dstress.nocompile.InExpression_15;

class MyClass{
	char c = 'c';
}

int main(){
	MyClass object = new MyClass();

	void* ptr = 'c' in object;

	return 0;
}
