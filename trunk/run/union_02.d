// $HeadURL$
// $Date$
// $Author$

module dstress.run.union_02;

union MyUnion{
	int a;
	int b;
}

int main(){
	static MyUnion u={2};
	assert(u.a==2);
	assert(u.b==2);
	return 0;
}
