// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ 13

module dstress.nocompile.u.unittest_06;

int status;

enum TestEnum{
	x=2,
	unittest{
		status++;
	}
}
