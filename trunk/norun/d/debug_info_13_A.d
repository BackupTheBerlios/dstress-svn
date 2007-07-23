// $HeadURL$
// $Date$
// $Author$

// @author@	<someanon@yahoo.com>
// @date@	2007-03-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1079
// @desc@	[Issue 1079] gdb on linux: Dwarf Error: Cannot find DIE at 0xb705 referenced from DIE at 0x250

// __DSTRESS_TORTURE_REQUIRE__ -g
// __GDB_SCRIPT__ run
// __GDB_PATTERN__ at .*:18

module dstres.norun.d.debug_info_13_A;

int main() {
	Object foo = null;
	auto b = foo.toString();
	return 0;
}
