// $HeadURL$
// $Date$
// $Author$

// only associative arrays support the InExpression

module dstress.nocompile.InExpression_17;

enum MyEnum : char{
	c = 'c'
}

int main(){
	MyEnum object;

	void* ptr = 'c' in object;

	return 0;
}
