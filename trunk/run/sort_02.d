int main(){
	byte a[];
	a.length=5;
	a[0]=byte.max;
	a[1]=3;
	a[2]=0;
	a[3]=2;
	a[4]=byte.max;

	byte[] b=a.sort;

	assert(a.length==5);
	assert(a[0]==byte.min);
	assert(a[1]==0);
	assert(a[2]==2);
	assert(a[3]==3);
	assert(a[4]==byte.max);

	assert(b.length==5);
	assert(b[0]==byte.min);
	assert(b[1]==0);
	assert(b[2]==2);
	assert(b[3]==3);
	assert(b[4]==byte.max);

	return 0;
}
