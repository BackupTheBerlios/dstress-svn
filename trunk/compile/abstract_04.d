// @author@	Steward Gordon <Steward_member@pathlink.com>
// @date@	2004-09-24

int status;

abstract interface MyInterface{
	abstract int test()
		in{
			status++;
		};
}
