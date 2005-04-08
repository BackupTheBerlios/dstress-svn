// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-08
// @uri@	news:d36g3g$31ec$1@digitaldaemon.com
	
module dstress.run.opCat_06;

int main(){
	static bit[] a = [true, true, false, true, false];
	assert(a.length==5);
	assert(a[0]==true);
	assert(a[1]==true);
	assert(a[2]==false);
	assert(a[3]==true);
	assert(a[4]==false);

	bit[] b = a~false;
	
	assert(a.length==5);
	assert(a[0]==true);
	assert(a[1]==true);
	assert(a[2]==false);
	assert(a[3]==true);
	assert(a[4]==false);

	assert(b.length==6);
	assert(b[0]==true);
	assert(b[1]==true);
	assert(b[2]==false);
	assert(b[3]==true);
	assert(b[4]==false);
	assert(b[5]==false);

	return 0;
}
