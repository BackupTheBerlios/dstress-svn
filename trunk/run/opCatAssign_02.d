// $HeadURL$
// $Date$
// $Author$

module dstress.run.opCatAssign_02;

int main(){
	int[] a;
	a.length=3;
	a[0]=2;
	a[1]=4;
	a[2]=8;
	assert(a.length==3);

	a~=a;
	assert(a.length==6);
	assert(a[0]==2);
	assert(a[1]==4);
	assert(a[2]==8);
	assert(a[3]==2);
	assert(a[4]==4);
	assert(a[5]==8);

	return 0;
}
