// $HeadURL$
// $Date$
// $Author$

// @author@	<pseus7@gmail.com>
// @date@	2007-12-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1746
// @desc@	[Issue 1746] New: Enums with member initializers generate undefined symbols

module dstress.run.e.enum_52_C;

enum E{
	A,
	B = -2,
	C = -3
}

int main(){
	E e;
	if(0 != e){
		assert(0);
	}
	return 0;
}
