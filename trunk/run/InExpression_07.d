// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_07;

class MyClass{
	int i;
	char c;
}

int main(){
	MyClass value = new MyClass();
	value.i = 1;
	value.c = '1';
	char[] key = "eins";
	MyClass[char[]] array;
	
	array[key]=value;
	MyClass* ptr = key in array;
	
	assert(value.i == ptr.i);
	assert(value.c == ptr.c);

	value.i++;
	value.c--;

	assert(value.i == ptr.i);
	assert(value.c == ptr.c);

	return 0;
}
