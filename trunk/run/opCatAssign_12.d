// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__

module dstress.run.opCatAssign_12;

static this(){
	int[] a;
	a.length = 2;
	a[0]=1;
	a[1]=2;
	
	int[] b;
	b.length = 1;
	b[0]=3;
	
	a~=b;
	
	assert(a.length==3);
	assert(a[0]==1);
	assert(a[1]==2);
	assert(a[2]==3);
	
	assert(b.length==1);
	assert(b[0]==3);
}

int main(){
	return 0;
}