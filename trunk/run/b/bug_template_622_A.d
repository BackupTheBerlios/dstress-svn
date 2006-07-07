// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2006-07-06
// @uri@	news:bug-241-3@http.d.puremagic.com/issues/

module dstress.run.b.bug_template_622_A;

template func(T, T c = 1){
	T func(T x){
		return x + c;
	}
}

int main(){
	if(func(1) != 2){
		assert(0);
	}
	
	return 0;
}
