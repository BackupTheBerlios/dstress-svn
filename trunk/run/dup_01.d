int main(){
	byte[] a;
	a.length=3;
	a[0]=3;
	a[1]=9;
	a[2]=18;

	byte[] b= a.dup;
	a[2]='A';
	b[0]='B';

	assert(a.length==3);
	assert(a[0]==3);
	assert(a[1]==9);
	assert(a[2]=='A');

	assert(b.length==3);
	assert(b[0]=='B');
	assert(b[1]==9);
	assert(b[2]==18);

	return 0;
}
