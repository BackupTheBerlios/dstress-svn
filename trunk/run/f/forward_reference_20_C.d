// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2007-03-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1055
// @desc@	[Issue 1055] union forward reference "overlapping initialization" error

module dstress.run.f.forward_reference_20_C;

struct S{
	int y = 0x1234_5678;
}

struct Z {
	union {
		S s;
	}
	int x = 0x9ABC_DEF0;
}

int main(){
	Z z;
	if(0x9ABC_DEF0 != z.x){
		assert(0);
	}
	if(0x1234_5678 != z.s.y){
		assert(0);
	}
	return 0;
}
