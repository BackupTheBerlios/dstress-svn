// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathix@dprogramming.com>
// @date@	2006-06-08
// @uri@	news:op.sr2gh5jwkcck4r@esi
// @desc@	void.sizeof: semicolon expected, not '.'

module dtsress.run.v.void_01;

int main(){
	size_t a;
	a = void.sizeof;
	size_t b = void.sizeof;

	assert(a==b);

	return 0;
}
