// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_REQUIRE__ -g
// __GDB_SCRIPT__ break debug_info_10_A.d:16\nrun\nprint i
// __GDB_PATTERN__ 1 = 12340011

module dstress.run.d.debug_info_10_A;

int main(char[][] args){
	int i = args.length / 1000;

	i += 12340011;

	if(i % 4){
		return 0;
	}

	assert(0);
}
