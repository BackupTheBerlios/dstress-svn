// $HeadURL$
// $Date$
// $Author$

// only associative arrays support the InExpression

module dstress.nocompile.InExpression_16;

struct MyStruct{
	char c = 'c';
}

int main(){
	MyStruct object;

	void* ptr = 'c' in object;

	return 0;
}
