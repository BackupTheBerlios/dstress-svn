// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 10

module dstress.nocompile.g.goto_16_B;

void test(){
	goto some_label;
}

void foo(){
	some_label: return;
}

