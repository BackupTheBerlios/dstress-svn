// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__  12

module dstress.nocompile.super_03;

int x;

void test(){
	super.x = 2;
}

int main(){
	test();
	return 0;
}

