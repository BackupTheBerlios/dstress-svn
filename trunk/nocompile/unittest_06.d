// according to dmd-0.105 documentation unittests are class member functions

module dstress.nocompile.unittest_06;

enum TestEnum{
	x=2,
	unittest{
	}
}
