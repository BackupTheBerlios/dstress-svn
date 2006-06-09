// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_REQUIRE__ -g
// __GDB_SCRIPT__ break debug_info_10_B.d:23\nrun\nprint i
// __GDB_PATTERN__ 1 = 5678

module dstress.run.d.debug_info_10_A;

int i = 1234;

int main(char[][] args){
	int i = 5678 + args.length / 1000;

	{
		int i = 9002 + args.length / 1000;
		if(i % 2){
			assert(0);
		}
	}

	if(i % 4){
		return 0;
	}

	assert(0);
}
