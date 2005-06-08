// $HeadURL$
// $Date$
// $Author$

module dstress.run.sort_01;

int main(){
	bit a[];
	a.length=3;
	a[0]=false;
	a[1]=true;
	a[2]=false;

	bit[] b=a.sort;

	assert(a.length==3);
	assert(!a[0]);
	assert(!a[1]);
	assert(a[2]);

	assert(b.length==3);
	assert(!b[0]);
	assert(!b[1]);
	assert(b[2]);
	
	assert(&a != &b);
	assert(a.ptr is b.ptr);

	return 0;
}
