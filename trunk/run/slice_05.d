// $HeadURL$
// $Date$
// $Author$

module dstress.run.slice_05;

int main(){
	byte[] a;
	a.length=2;
	a[] = 1;
	assert(a[0]);
	assert(a[1]);
	
	byte[] b;
	b.length=2;
	assert(!b[0]);
	assert(!b[1]);
	
	b[1..2] = a[0..1];
	assert(!b[0]);
	assert(b[1]);

	return 0;
}
