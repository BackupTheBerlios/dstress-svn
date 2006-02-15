// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.g.goto_16_A;

void foo(){
	some_label: return;
}

void test(){
	goto some_label;
}

