// $HeadURL$
// $Date$
// $Author$

// @author@	<llucax@gmail.com>
// @date@	2008-02-01
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1813
// @desc@	[Issue 1813] static function parametrized with alias used with delegate throws an internal compiler error.

module dstress.run.b.bug_tree_inline_1902_A;

template thunk(alias fn){
	void thunk(int* arg){
		fn(arg);
	}
}

int main(){
	int x = 1;

	void inner(int* arg){
		if(!(arg !is &x)){
			assert(0);
		}
	}
	thunk!(inner)(&x);
	return 0;
}
