// $HeadURL$
// $Date$
// $Author$

// only associative arrays support the InExpression

// __DSTRESS_ELINE__ 18

module dstress.nocompile.InExpression_14;

int main(){
	int value = 1;
	size_t key = 1;	
	int[] array;
	array.length = 20;

	array[key]=value;
	int* ptr = key in array;

	return 0;
}
