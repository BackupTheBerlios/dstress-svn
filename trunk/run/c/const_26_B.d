// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.const_26_B;

const int a;

static this(){
	a = 1;
	a = 2;
	a = 3;
}

int main(){
	assert(a==3);
	return 0;
}
