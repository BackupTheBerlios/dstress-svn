// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=734
// @desc@	[Issue 734] New: Multidimensional arrays use incorrect initializer

module dstress.run.a.array_initialization_30_A;

typedef int Xint = 42;

int main(){
	auto x = new Xint[3][4];
	if(x.length != 4){
		assert(0);
	}
	foreach(i; x) {
		if(i.length != 3){
			assert(0);
		}
		foreach (j; i){
			if(j != j.init){
				assert(0);
			}
		}
	}

	return 0;
}
