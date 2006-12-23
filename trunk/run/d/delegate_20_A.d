// $HeadURL$
// $Date$
// $Author$

// @author@	Marsell <marsell_pk@yahoo.com>
// @date@	2006-11-13
// @uri@	news:bug-500-3@http.d.puremagic.com/issues/
// @desc@	[Issue 500] New: Cannot assign to delegate during definition

module dstress.run.d.delegate_20_A;

int main(){
	int i;

	int delegate() dg;
	dg = { return ++i; };

	if(dg() != 1){
		assert(0);
	}
	if(dg() != 2){
		assert(0);
	}
	if(i != 2){
		assert(0);
	}

	return 0;
}
