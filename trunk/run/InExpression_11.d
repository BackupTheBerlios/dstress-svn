// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_11;

class MyClass{
	int i;
	char c;
}

int main(){
	MyClass value = new MyClass();
	char[] key = "eins";
	MyClass[char[]] array;
	
	array[key]=value;
	MyClass* ptr = "zwei" in array;
	
	assert(ptr === null);

	return 0;
}
