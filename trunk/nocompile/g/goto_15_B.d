// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.g.goto_15_B;

void test(int i){
	switch(i){
		case 0:
			break;
		case 1:
			goto 2;
		case 2:
			break;
	}
}

