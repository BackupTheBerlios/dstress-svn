int main(){
	bit[] a;
	a.length=3;
	a[0]=true;
	a[1]=false;
	a[2]=true;
	assert(a.length==3);
	assert(a[0]);
	assert(!a[1]);
	assert(a[2]);

	a~=a;
	assert(a.length==6);
	assert(a[0]);
	assert(!a[1]);
	assert(a[2]);
	assert(a[3]);
	assert(!a[4]);
	assert(a[5]);

	return 0;
}
