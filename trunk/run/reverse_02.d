int main(){
	bit a[3];
	a[0]=true;
	a[1]=false;
	a[2]=false;

	bit[] b=a.reverse;
	assert(b.length==3);
	assert(!b[0]);
	assert(!b[1]);
	assert(b[2]);
	assert(a.length==3);
	assert(!a[0]);
	assert(!a[1]);
	assert(a[2]);
	return 0;
}
