// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_02;

int main(){
	int value=1;
	char[] key = "eins";
	int[char[]] array;
	
	array[key]=value;
	int* ptr = key in array;
	
	assert(value == *ptr);

	value=2;
	assert(value == 2);
	assert(*ptr == 1);

	*ptr = 3;
	assert(value == 2);
	assert(*ptr == 3);

	return 0;
}
