// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-06-15
// @uri@	news:1lruav5hsvxn6$.uj97bpn5gk38$.dlg@40tude.net
// @desc@	empty array length and ptr

module dstress.run.p.ptr_10_G;

void test(char[] x, int len, bool nonNull){

	if (x.length != len)
		assert(0);

	if (nonNull && x.ptr is null)
		assert(0);

	if (!nonNull && x.ptr !is null)
		assert(0);
}

int main(){
	char[] b;
	b= "abc".dup;
	b.length=0;
	test(b, 0, true);
	return 0;
}

