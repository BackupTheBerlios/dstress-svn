int main(){
	ubyte a[];
	a.length=7;
	a[0]=ubyte.max;
	a[1]=ubyte.max-1;
	a[2]=2;
	a[3]=0;
	a[4]=1;
	a[5]=ubyte.min;
	a[6]=ubyte.min+1;

	ubyte[] b=a.sort;

	assert(a.length==7);
	assert(a[0]==0);
	assert(a[1]==ubyte.min);
	assert(a[2]==ubyte.min+1);
	assert(a[3]==1);
	assert(a[4]==2);
	assert(a[5]==ubyte.max-1);
	assert(a[6]==ubyte.max);

	assert(b.length==7);
	assert(b[0]==0);
	assert(b[1]==ubyte.min);
	assert(b[2]==ubyte.min+1);
	assert(b[3]==1);
	assert(b[4]==2);
	assert(b[5]==ubyte.max-1);
	assert(b[6]==ubyte.max);

	return 0;
}
