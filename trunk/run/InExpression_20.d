// $HeadURL$
// $Date$
// $Author$

module dstress.run.InExpression_20;

class ArrayTest{
	int i;
}

int main(){
	ArrayTest[char[]] array;

	ArrayTest at = new ArrayTest();
	at.i=2;

	array["key"]=at;

	ArrayTest* ptr = "key" in array;
	assert(at.i == 2);
	assert(ptr.i == 2);

	ptr.i = 3;
	assert(at.i == 3);
	assert(ptr.i == 3);

	at.i = 4;
	assert(at.i == 4);
	assert(ptr.i == 4);

	return 0;
}
