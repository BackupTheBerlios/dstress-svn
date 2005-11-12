// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 22

module dstress.nocompile.slice_08;

int main(){
	bit[] a;
	a.length=2;
	a[] = true;
	assert(a[0]);
	assert(a[1]);
	
	bit[] b;
	b.length=2;
	assert(!b[0]);
	assert(!b[1]);
	
	b[0..1] = a[1..2];
	assert(b[0]);
	assert(!b[1]);

	return 0;
}
