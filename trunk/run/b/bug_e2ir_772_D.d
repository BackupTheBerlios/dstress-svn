// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <chris@dprogramming.com>
// @date@	2006-09-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=354
// @desc@	[Issue 354] New: Internal error: e2ir.c 772 with bad template use

module dstress.run.b.bug_e2ir_772_D;

template T(){
	const int T = 3;
}

void check(int x){
	if(x != 3){
		assert(0);
	}
}

int main(){
	check(T);

	return 0;
}
