int main(){
	byte a[];
	a.length=3;
	a[0]=3;
	a[1]=9;
	a[2]=18;

	byte[] b=a.reverse;
	assert(b.length==3);
	assert(b[0]==18);
	assert(b[1]==9);
	assert(b[2]==3);
	assert(a.length==3);
	assert(a[0]==18);
	assert(a[1]==9);
	assert(a[2]==3);
	return 0;
}
