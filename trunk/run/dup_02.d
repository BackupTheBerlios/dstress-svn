int main(){
	bit a[];
	a.length=3;
	a[0]=false;
	a[1]=false;
	a[2]=true;

	bit[] b=a.dup;
	a[1]=true;
	b[0]=true;

	assert(a.length==3);
	assert(!a[0]);
	assert(a[1]);
	assert(a[2]);

	assert(b.length==3);
	assert(b[0]);
	assert(!b[1]);
	assert(b[2]);

	return 0;
}
