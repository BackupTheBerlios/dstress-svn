// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_13;

int main(){
	int value = 1;
	char[] key = "eins";
	int[char[]] array;
	
	array[key]=value;
	int* ptr = "zwei" in array;
	
	assert(ptr === null);

	return 0;
}
