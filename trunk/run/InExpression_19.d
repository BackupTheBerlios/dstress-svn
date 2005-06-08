// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_19;

int main(){
	int[char[]] array;

	void* ptr = "key" in array;

	assert(ptr is null);

	return 0;
}
