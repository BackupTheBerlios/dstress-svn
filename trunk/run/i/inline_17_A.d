// $HeadURL$
// $Date$
// $Author$

// @author@	Boris Kolar <boris.kolar@globera.com>
// @date@	2006-09-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=377
// @desc@	[Issue 377] New: Compiler error when using -inline only

module dstress.run.i.inline_17_A;

struct List {
	void get() {
	}
}

interface Model {
	List list();
}

Model model;

int main(){ 
	(model ? model.list : List.init).get();
	
	return 0;
}
