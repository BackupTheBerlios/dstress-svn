// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_10;

class MyClass{
	int i;
	char c;
}

int main(){
	MyClass value = new MyClass();
	char[] key = "eins";
	char[] copyKey;
	copyKey = key.dup;
	MyClass[char[]] array;
	
	array[key]=value;
	MyClass* ptr = copyKey in array;
	
	assert(value == *ptr);

	return 0;
}
