// $HeadURL$
// $Date$
// $Author$

module dstress.run.sort_12;

int main(){
	ulong a[];
	a.length=7;
	a[0]=ulong.max;
	a[1]=ulong.max-1;
	a[2]=2;
	a[3]=0;
	a[4]=1;
	a[5]=ulong.min;
	a[6]=ulong.min+1;

	ulong[] b=a.sort;

	assert(a.length==7);
	assert(a[0]==0);
	assert(a[1]==ulong.min);
	assert(a[2]==ulong.min+1);
	assert(a[3]==1);
	assert(a[4]==2);
	assert(a[5]==ulong.max-1);
	assert(a[6]==ulong.max);

	assert(b.length==7);
	assert(b[0]==0);
	assert(b[1]==ulong.min);
	assert(b[2]==ulong.min+1);
	assert(b[3]==1);
	assert(b[4]==2);
	assert(b[5]==ulong.max-1);
	assert(b[6]==ulong.max);

	assert(&a != &b);
	
	return 0;
}
