int main(){
	byte a[];
	a.length=3;
	a[0]=3;
	a[1]=1;
	a[2]=2;

	byte[] b=a.sort;

	assert(a.length==3);
	assert(a[0]==1);
	assert(a[1]==2);
	assert(a[2]==3);

	assert(b.length==3);
	assert(b[0]==1);
	assert(b[1]==2);
	assert(b[2]==3);

	return 0;
}
