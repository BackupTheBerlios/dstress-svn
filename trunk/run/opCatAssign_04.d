int main(){
	bit[] a;
	a.length=3;
	a[0]=true;
	a[1]=true;
	a[2]=true;
	assert(a.length==3);

	bit[] b;
	b.length=2;
	b[0]=false;
	b[1]=false;
	assert(b.length==2);

	a~=b;
	assert(a.length==5);
	assert(a[0]);
	assert(a[1]);
	assert(a[2]);
	assert(!a[3]);
	assert(!a[4]);

	return 0;
}
