// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2007-05-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1148
// @desc@	[Issue 1148] Weird error "... of type TOK146" on recursive type definition

module dstress.run.t.typeof_17_A;

void* v;

void bar(void* fn){
	v = cast(void*)fn;
}

void foo(functype param) {
	param(null);
}

alias void function(void*) functype;

int main(){
	v = &main;
	foo(&bar);
	if(null !is v){
		assert(0);
	}

	return 0;
}
