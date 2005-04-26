// $HeadURL$
// $Date$
// $Author$

module dstress.run.sort_02;

int main(){
	byte a[];
	a.length=7;
	a[0]=byte.max;
	a[1]=byte.max-1;
	a[2]=1;
	a[3]=0;
	a[4]=-1;
	a[5]=byte.min;
	a[6]=byte.min+1;

	byte[] b=a.sort;

	assert(a.length==7);
	assert(a[0]==byte.min);
	assert(a[1]==byte.min+1);
	assert(a[2]==-1);
	assert(a[3]==0);
	assert(a[4]==1);
	assert(a[5]==byte.max-1);
	assert(a[6]==byte.max);

	assert(b.length==7);
	assert(b[0]==byte.min);
	assert(b[1]==byte.min+1);
	assert(b[2]==-1);
	assert(b[3]==0);
	assert(b[4]==1);
	assert(b[5]==byte.max-1);
	assert(b[6]==byte.max);

	assert(&a != &b);
	assert(a.ptr === b.ptr);
	
	return 0;
}
