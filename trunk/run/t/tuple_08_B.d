// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2006-11-12
// @uri@	news:bug-495-3@http.d.puremagic.com/issues/
// @desc@	[Issue 495] New: ICE passing variadic arglist to another variadic template

module dstress.run.t.tuple_08_B;

template g(T...){
	int g(){
		return T.length;
	}
}

template f(T...){
	int f(T t){
		return g!(T)();
	}
}

int main(){
	if(f(7, 5.6f) != 2){
		assert(0);
	}
	return 0;
}
