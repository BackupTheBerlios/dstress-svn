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
	
	assert( &value == ptr);

	return 0;
}
