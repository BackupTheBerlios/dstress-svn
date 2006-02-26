// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.slice_06;

int main(){
	bool[] a;
	a.length=2;
	a[] = true;
	assert(a[0]);
	assert(a[1]);
	
	bool[] b;
	b.length=2;
	assert(!b[0]);
	assert(!b[1]);
	
	b[1..2] = a[0..1];
	assert(!b[0]);
	assert(b[1]);

	return 0;
}
