// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.override_09;

interface Parent{
	void test();
}

interface Child : Parent{
	override void test();
}
