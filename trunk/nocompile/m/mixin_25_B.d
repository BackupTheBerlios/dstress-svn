// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-10-04
// @uri@	news:bug-398-3@http.d.puremagic.com/issues/
// @desc@	[Issue 398] New: No way to abort compilation in a doubly recursive mixin

module dstress.nocompile.m.mixin_25_B;

template rubbish(int w) {
	static if (w<=0) {
		int val = 2;
	} else {
		mixin rubbish!(w-1) left;
		mixin rubbish!(w-1) right;
	}
}

int main(){
	mixin rubbish!(30);
	return 0;
}


