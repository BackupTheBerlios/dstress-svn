// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2007-05-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1148
// @desc@	[Issue 1148] Weird error "... of type TOK146" on recursive type definition

module dstress.run.t.typeof_17_B;

int count;

void foo(functype param) {
	count++;
	if(param){
		param(null);
	}
}

alias typeof(&foo) functype;

int main(){
	foo(null);
	if(count != 1){
		assert(0);
	}
	foo(&foo);
	if(count != 3){
		assert(0);
	}

	return 0;
}
