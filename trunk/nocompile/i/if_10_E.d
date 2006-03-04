// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 10

module dstess.nocompile.i.if_10_E;

int test(int i){
	if i--
		if !i
			return 4;
		return 5;
	return 6;
}
