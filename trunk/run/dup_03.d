// $HeadURL$
// $Date$
// $Author$

module dstress.run.dup_03;

int main(){
	byte[] a= new byte[5];
	byte[] b=a;

	assert(a[3]==0);
	assert(b[3]==0);

	a[1]=1;
	assert(a[1]==1);
	assert(b[1]==1);

	b[3]=2;
	assert(a[3]==2);
	assert(b[3]==2);
	
	b=a.dup;

	b[3]=7;
	assert(a[3]==2);
	assert(b[3]==7);

	a[2]=5;
	assert(a[2]==5);
	assert(b[2]==0);
	return 0;
}
