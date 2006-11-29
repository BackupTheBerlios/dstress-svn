// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2006-11-28
// @uri@	news:bug-617-3@http.d.puremagic.com/issues/
// @desc@	[Issue 617] New: IFTI doesn't use normal promotion rules for non-template parameters

module dstress.run.t.template_49_B;

template foo(T){
	size_t foo(T s, int i){
		return s.length + i;
	}
}

int main(){
	if(foo("ab", 5) != 7){
		assert(0);
	}
	return 0;
}
