// $HeadURL$
// $Date$
// $Author$

module dstress.run.slice_09;

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

	try{
		b[1..2] = a[0..1];
	}catch(Exception e){
		return 0;
	}
	assert(0);
}
