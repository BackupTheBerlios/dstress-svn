// $HeadURL$
// $Date$
// $Author$

module dstress.run.sort_07;

int main(){
	short a[];
	a.length=7;
	a[0]=short.max;
	a[1]=short.max-1;
	a[2]=1;
	a[3]=0;
	a[4]=-1;
	a[5]=short.min;
	a[6]=short.min+1;

	short[] b=a.sort;

	assert(a.length==7);
	assert(a[0]==short.min);
	assert(a[1]==short.min+1);
	assert(a[2]==-1);
	assert(a[3]==0);
	assert(a[4]==1);
	assert(a[5]==short.max-1);
	assert(a[6]==short.max);

	assert(b.length==7);
	assert(b[0]==short.min);
	assert(b[1]==short.min+1);
	assert(b[2]==-1);
	assert(b[3]==0);
	assert(b[4]==1);
	assert(b[5]==short.max-1);
	assert(b[6]==short.max);

	assert(&a != &b);
	
	return 0;
}
