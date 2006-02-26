// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.slice_08;

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
	
	b[0..1] = a[1..2];
	assert(b[0]);
	assert(!b[1]);

	return 0;
}
