// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-09-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=343
// @desc@	[Issue 343] New: Compile error using mixin containing struct

module dstress.run.m.mixin_24_D;

struct S{
	int i;
}

template T(){
	S s = void;
}

int main(){
	mixin T!();

	s.i = 1;
	if(s.i != 1){
		assert(0);
	}
	return 0;
}
