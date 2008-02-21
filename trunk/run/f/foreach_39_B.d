// $HeadURL$
// $Date$
// $Author$

// @author@	<default_357-line@yahoo.de>
// @date@	2007-08-04
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1400
// @desc@	[Issue 1400] New: static array in struct as parameter BROKEN

module dstress.run.f.foreach_39_B;

void test(float[3] t) {
	if(5.0f != t[0]){
		assert(0);
	}
	if(6.0f != t[1]){
		assert(0);
	}
	if(7.0f != t[2]){
		assert(0);
	}
}

struct E {
	float[3] data = [5.0f, 6.0f, 7.0f];
}

int main() {
	E[] es;
	E e;

	es~=e;

	foreach(v; es){
		test(v.data);
	}

	return 0;
}
