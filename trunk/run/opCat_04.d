// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-08
// @uri@	news:d36g3g$31ec$1@digitaldaemon.com
	
module dstress.run.opCat_04;

int main(){
	static bit[] a = [1, 1, 0, 1, 0];
	assert(a.length==5);
	assert(a[0]==1);
	assert(a[1]==1);
	assert(a[2]==0);
	assert(a[3]==1);
	assert(a[4]==0);

	static bit[] b = [1, 0, 0, 1];
	assert(b.length==4);
	assert(b[0]==1);
	assert(b[1]==0);
	assert(b[2]==0);
	assert(b[3]==1);

	
	bit[] c = a~b;
	assert(a.length==5);
	assert(a[0]==1);
	assert(a[1]==1);
	assert(a[2]==0);
	assert(a[3]==1);
	assert(a[4]==0);

	assert(b.length==4);
	assert(b[0]==1);
	assert(b[1]==0);
	assert(b[2]==0);
	assert(b[3]==1);

	assert(c.length==9);
	assert(c[0]==1);
	assert(c[1]==1);
	assert(c[2]==0);
	assert(c[3]==1);
	assert(c[4]==0);
	assert(c[5]==1);
	assert(c[6]==0);
	assert(c[7]==0);
	assert(c[8]==1);

	return 0;
}
