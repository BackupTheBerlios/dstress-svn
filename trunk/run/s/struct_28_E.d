// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2007-02-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=997
// @desc@	[Issue 997] [Regression] Struct-returning function that conditionally passes the result of another function straight through doesn't work (NRVO bug?)

module dstress.run.s.struct_28_E;

struct Rect {
    int left, top, right, bottom;
}

Rect foo(bool indirect) {
	if(indirect){
		return defaultRect();
	}else{
		return Rect.init;
	}
}

Rect defaultRect(){
	return Rect.init;
}

int main() {
	if(foo(false) != foo(true)){
		assert(0);
	}
	return 0;
}
