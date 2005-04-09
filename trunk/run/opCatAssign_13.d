// $HeadURL$
// $Date$
// $Author$

module dstress.run.opCatAssign_13;

static ~this(){
	int[] a;
	a.length = 2;
	a[0]=1;
	a[1]=2;
	
	int[] b;
	b.length = 1;
	b[0]=3;
	
	a~=b;
	
	assert(a.length==3);
	assert(a[0]==0);
	assert(a[1]==1);
	assert(a[2]==2);
	
	assert(b.length==1);
	assert(b[0]==3);
}

int main(){
	return 0;
}
