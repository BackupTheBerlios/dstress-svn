// $HeadURL$
// $Date$
// $Author$

// .offset isn't supported for unions

module dstress.nocompile.offset_03;

union MyUnion{
	int a;
	int b;	
}

int main(){
	MyUnion u;

	assert(u.a.offset >= 0);
	assert(u.b.offset >= 0);
	assert(u.a.offset != u.b.offset);

	return 0;
}
