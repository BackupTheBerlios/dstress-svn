// $HeadURL$
// $Date$
// $Author$

// only associative arrays support the InExpression

// __DSTRESS_ELINE__ 17

module dstress.nocompile.InExpression_17;

enum MyEnum : char{
	c = 'c'
}

int main(){
	MyEnum object;
	void* ptr = 'c' in object;
	return 0;
}
