// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12
// __GDB_SCRIPT__ run
// __GDB_PATTERN__ assert_05[.]d[(]12[)]

module dstress.norun.assert_04;

static ~this(){
	assert(0);
}

int main(){
	return 0;
}