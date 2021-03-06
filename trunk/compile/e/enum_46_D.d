// $HeadURL$
// $Date$
// $Author$

// @author@	James Pelcis <jpelcis@gmail.com>
// @date@	2006-07-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=250
// @desc@	[Issue 250] enum : bool allowed with odd results

module dstress.compile.e.enum_46_D;

enum Bool : bool {
	Unknown = false,
	False = false,
	True,
}

static assert(Bool.False == false);
static assert(Bool.True == true);
static assert(Bool.Unknown == false);
