// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-08
// @uri@	news:d36g3g$31ec$1@digitaldaemon.com
	
module dstress.run.opCat_04;

int main(){
	static bool[] a = [true, true, false, true, false];
	assert(a.length==5);
	assert(a[0]==true);
	assert(a[1]==true);
	assert(a[2]==false);
	assert(a[3]==true);
	assert(a[4]==false);

	static bool[] b = [true, false, false, true];
	assert(b.length==4);
	assert(b[0]==true);
	assert(b[1]==false);
	assert(b[2]==false);
	assert(b[3]==true);

	
	bool[] c = a~b;
	assert(a.length==5);
	assert(a[0]==true);
	assert(a[1]==true);
	assert(a[2]==false);
	assert(a[3]==true);
	assert(a[4]==false);

	assert(b.length==4);
	assert(b[0]==true);
	assert(b[1]==false);
	assert(b[2]==false);
	assert(b[3]==true);

	assert(c.length==9);
	assert(c[0]==true);
	assert(c[1]==true);
	assert(c[2]==false);
	assert(c[3]==true);
	assert(c[4]==false);
	assert(c[5]==true);
	assert(c[6]==false);
	assert(c[7]==false);
	assert(c[8]==true);

	return 0;
}
