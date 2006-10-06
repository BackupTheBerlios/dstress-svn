// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-10-04
// @uri@	news:bug-398-3@http.d.puremagic.com/issues/
// @desc@	[Issue 398] New: No way to abort compilation in a doubly recursive mixin

module dstress.run.m.mixin_25_A;

template rubbish(int w) {
	static if (w<=0) {
		int val = 2;
	} else {
		mixin rubbish!(w-1) left;
		mixin rubbish!(w-1) right;
	}
}

int main(){
	mixin rubbish!(4);
	return 0;
}


