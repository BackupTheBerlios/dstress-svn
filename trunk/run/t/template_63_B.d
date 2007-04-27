// $HeadURL$
// $Date$
// $Author$

// @author@	Leo Dahlmann <leo.dahlmann@gmail.com>
// @date@	2007-04-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1178
// @desc@	[Issue 1178] templates - deduction + specialization won't compile

module dstress.run.t.template_63_B;

template outer(O){
	O inner(I)(float x, I i){
		return cast(O) x;
	}
}

int main(){
	if(5.0L != outer!(double).inner(5.0f, "hi")){
		assert(0);
	}

	return 0;
}
