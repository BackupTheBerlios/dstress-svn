// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.const_26_A;

const int a, b;

static this(){
	a = b + 1;
	b = a + 1;
	a = b + 1;
}

int main(){
	assert(a==3);
	assert(b==2);
	return 0;
}
