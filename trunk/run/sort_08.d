int main(){
	int a[];
	a.length=7;
	a[0]=int.max;
	a[1]=int.max-1;
	a[2]=1;
	a[3]=0;
	a[4]=-1;
	a[5]=int.min;
	a[6]=int.min+1;

	int[] b=a.sort;

	assert(a.length==7);
	assert(a[0]==int.min);
	assert(a[1]==int.min+1);
	assert(a[2]==-1);
	assert(a[3]==0);
	assert(a[4]==1);
	assert(a[5]==int.max-1);
	assert(a[6]==int.max);

	assert(b.length==7);
	assert(b[0]==int.min);
	assert(b[1]==int.min+1);
	assert(b[2]==-1);
	assert(b[3]==0);
	assert(b[4]==1);
	assert(b[5]==int.max-1);
	assert(b[6]==int.max);

	return 0;
}
