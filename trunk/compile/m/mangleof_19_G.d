// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-11-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=532
// @desc@	[Issue 532] New: Wrong name mangling for template alias params of local vars

module dstress.compile.m.mangleof_19_G;

template Apple(alias F){
	alias int[] Basket;

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
