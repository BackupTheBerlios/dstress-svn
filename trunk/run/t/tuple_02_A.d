// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-11-06
// @uri@	news:bug-484-3@http.d.puremagic.com/issues/
// @desc@	[Issue 484] New: Compiler segfault with template variadic used as a template alias.

module dstress.run.t.tuple_02_A;

int g(alias B)(){
	return B * 2;
}

int f(A...)(A a){
	return g!(a) + 1;
}

int main(){
	if(f(4) != 9){
		assert(0);
	}
	return 0;
}
