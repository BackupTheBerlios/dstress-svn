// $HeadURL$
// $Date$
// $Author$

module dstress.run.sort_09;

int main(){
	long a[];
	a.length=7;
	a[0]=long.max;
	a[1]=long.max-1;
	a[2]=1;
	a[3]=0;
	a[4]=-1;
	a[5]=long.min;
	a[6]=long.min+1;

	long[] b=a.sort;

	assert(a.length==7);
	assert(a[0]==long.min);
	assert(a[1]==long.min+1);
	assert(a[2]==-1);
	assert(a[3]==0);
	assert(a[4]==1);
	assert(a[5]==long.max-1);
	assert(a[6]==long.max);

	assert(b.length==7);
	assert(b[0]==long.min);
	assert(b[1]==long.min+1);
	assert(b[2]==-1);
	assert(b[3]==0);
	assert(b[4]==1);
	assert(b[5]==long.max-1);
	assert(b[6]==long.max);

	assert(&a != &b);
	
	return 0;
}
