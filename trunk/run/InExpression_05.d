// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_05;

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
	
	assert(&value == ptr);

	return 0;
}
