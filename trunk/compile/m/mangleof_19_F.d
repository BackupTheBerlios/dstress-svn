// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-11-16
// @uri@	news:bug-532-3@http.d.puremagic.com/issues/
// @desc@	[Issue 532] New: Wrong name mangling for template alias params of local vars

module dstress.compile.m.mangleof_19_F;

template Apple(alias F){
	alias int Basket;

	alias void function (Basket) H;

	const char [] mangledname = typeof(H).mangleof;
}

template Peach(alias A){
	const char [] root = Apple!(A).mangledname;
	static assert(Apple!(A).mangledname == root);
}

int main(){
	int tree;
	const char[] s = Peach!(tree).root;

	return 0;
}
