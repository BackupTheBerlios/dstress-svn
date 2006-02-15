// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.g.goto_15_A;

void test(int i){
	switch(i){
		case 0:
			break;
		case 1:
			goto 0;
		case 3:
			break;
	}
}

