// $HeadURL$
// $Date$
// $Author$

// @author@	<aziz.kerim@gmail.com>
// @date@	2007-09-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1534
// @desc@	[Issue 1534] Can't mix in a case statement.

module dstress.run.m.mixin_37_A;

int check(int i){
	switch(i){
		mixin("case 0:{ return 1;}");
		case 1, 2:
			return 2;
		default:
			return 3;
	}
}

int main(){
	if(1 != check(0)){
		assert(0);
	}
	if(2 != check(1)){
		assert(0);
	}
	if(3 != check(-1)){
		assert(0);
	}
	return 0;
}
