// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_06;

struct MyStruct{
	int i;
	char c;
}

int main(){
	MyStruct value;
	value.i = 1;
	value.c = '1';
	char[] key = "eins";
	MyStruct[char[]] array;
	
	array[key]=value;
	MyStruct* ptr = key in array;
	
	assert(value.i == ptr.i);
	assert(value.c == ptr.c);

	value.i++;
	value.c--;

	assert(value.i != ptr.i);
	assert(value.c != ptr.c);

	return 0;
}
