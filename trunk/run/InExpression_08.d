// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_08;

class MyClass{
	int i;
	char c;
}

int main(){
	MyClass value = new MyClass();
	char[] key = "eins";
	MyClass[char[]] array;
	
	array[key]=value;
	MyClass* ptr = key in array;
	
	assert(&value == ptr);

	return 0;
}
