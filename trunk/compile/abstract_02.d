// @author@	Steward Gordon <Steward_member@pathlink.com>
// @date@	2004-09-24

int status;

abstract class MyAbstractClass{
	abstract int test()
		out{
			status++;
		};
}
