// $HeadURL$
// $Date$
// $Author$

module dstress.run.slice_07;

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
	
	b[0..1] = a[0..1];
	assert(b[0]);
	assert(!b[1]);

	return 0;
}
