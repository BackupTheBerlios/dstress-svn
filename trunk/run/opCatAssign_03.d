int main(){
	int[] a;
	a.length=3;
	a[0]=2;
	a[1]=4;
	a[2]=8;
	assert(a.length==3);

	int[] b;
	b.length=2;
	b[0]=1;
	b[1]=2;
	assert(b.length==2);

	a~=b;
	assert(a.length==5);
	assert(a[0]==2);
	assert(a[1]==4);
	assert(a[2]==8);
	assert(a[3]==1);
	assert(a[4]==2);

	return 0;
}
