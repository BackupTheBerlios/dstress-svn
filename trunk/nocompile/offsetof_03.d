// $HeadURL$
// $Date$
// Author$

module dstress.nocompile.offsetof_03;

union MyUnion{
	int a;
	int b;	
}

int main(){
	MyUnion u;

	assert(u.a.offsetof >= 0);
	assert(u.b.offsetof >= 0);
	assert(u.a.offsetof != u.b.offsetof);

	return 0;
}
