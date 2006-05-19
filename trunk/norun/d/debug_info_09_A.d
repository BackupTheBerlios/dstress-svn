// $HeadURL$
// $Date$
// $Author$

// @author@	<me@teqdruid.com>
// @date@	2006-06-18
// @uri@	news:bug-146-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_TORTURE_REQUIRE__ -g
// __GDB_SCRIPT__ run
// __GDB_PATTERN__ debug_info_09_Z[.]d:13

module dstress.norun.d.debug_info_09_A;

import addon.debug_info_09_Z;

int main(){
	mixin T!();
	foo();

	return 0;
}
