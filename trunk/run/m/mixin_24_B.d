// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-09-11
// @uri@	news:bug-343-3@http.d.puremagic.com/issues/
// @desc@	[Issue 343] New: Compile error using mixin containing struct

module dstress.run.m.mixin_24_B;

struct S{
	int i;
}

template T(){
	S s;
}

int main(){
	mixin T!();

	if(s.i != 0){
		assert(0);
	}
	return 0;
}
