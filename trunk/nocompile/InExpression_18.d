// $HeadURL$
// $Date$
// $Author$

// only associative arrays support the InExpression

module dstress.nocompile.InExpression_18;

union MyUnion{
	char c = 'c';
}

int main(){
	MyUnion object;

	void* ptr = 'c' in object;

	return 0;
}
