// only class member functions can be overridden

module dstress.nocompile.override_09;

interface Parent{
	void test();
}

interface Child : Parent{
	override void test();
}
