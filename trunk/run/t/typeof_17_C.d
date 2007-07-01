// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2007-05-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1148
// @desc@	[Issue 1148] Weird error "... of type TOK146" on recursive type definition

module dstress.run.t.typeof_17_C;

functype foo(int i) {
	return null;
}

alias typeof(&foo) functype;

int main(){
	if(foo(1) !is null){
		assert(0);
	}

	return 0;
}
