// $HeadURL$
// $Date$
// $Author$

// only associative arrays support the InExpression

// __DSTRESS_ELINE__ 17

module dstress.nocompile.InExpression_18;

union MyUnion{
	char c = 'c';
}

int main(){
	MyUnion object;
	void* ptr = 'c' in object;
	return 0;
}
