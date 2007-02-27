// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-05-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=136
// @desc@	[Issue 136] Corrupt GDB backtrace

// __GDB_SCRIPT__ run\nbacktrace
// __GDB_PATTERN__ in main

module dstress.norun.d.debug_info_12_A;

int main() {
	static int i = 0;
	while(i++ < 10)
		main();
	*(cast(int *)0) = 0;
	return 0;
}
