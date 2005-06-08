// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_12;

struct MyStruct{
	int i;
	char c;
}

int main(){
	MyStruct value;
	char[] key = "eins";
	MyStruct[char[]] array;
	
	array[key]=value;
	MyStruct* ptr = "zwei" in array;
	
	assert(ptr is null);

	return 0;
}
