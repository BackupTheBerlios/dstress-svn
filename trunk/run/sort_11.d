// $HeadURL$
// $Date$
// $Author$

module dstress.run.sort_11;

int main(){
	uint a[];
	a.length=7;
	a[0]=uint.max;
	a[1]=uint.max-1;
	a[2]=2;
	a[3]=0;
	a[4]=1;
	a[5]=uint.min;
	a[6]=uint.min+1;

	uint[] b=a.sort;

	assert(a.length==7);
	assert(a[0]==0);
	assert(a[1]==uint.min);
	assert(a[2]==uint.min+1);
	assert(a[3]==1);
	assert(a[4]==2);
	assert(a[5]==uint.max-1);
	assert(a[6]==uint.max);

	assert(b.length==7);
	assert(b[0]==0);
	assert(b[1]==uint.min);
	assert(b[2]==uint.min+1);
	assert(b[3]==1);
	assert(b[4]==2);
	assert(b[5]==uint.max-1);
	assert(b[6]==uint.max);

	assert(&a != &b);
	return 0;
}
