int main(){
	ushort a[];
	a.length=7;
	a[0]=ushort.max;
	a[1]=ushort.max-1;
	a[2]=2;
	a[3]=0;
	a[4]=1;
	a[5]=ushort.min;
	a[6]=ushort.min+1;

	ushort[] b=a.sort;

	assert(a.length==7);
	assert(a[0]==0);
	assert(a[1]==ushort.min);
	assert(a[2]==ushort.min+1);
	assert(a[3]==1);
	assert(a[4]==2);
	assert(a[5]==ushort.max-1);
	assert(a[6]==ushort.max);

	assert(b.length==7);
	assert(b[0]==0);
	assert(b[1]==ushort.min);
	assert(b[2]==ushort.min+1);
	assert(b[3]==1);
	assert(b[4]==2);
	assert(b[5]==ushort.max-1);
	assert(b[6]==ushort.max);

	return 0;
}
