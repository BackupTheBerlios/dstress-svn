// $HeadURL$
// $Date$
// $Author$

// @author@	larrycowan <larrycowan_member@pathlink.com>
// @date@	2004-11-04
// @uri@	news:cmd9i4$16g5$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D/12279

// Note:
// 	this crashs dmd-0.106 but results in the pseudo return code 1,
// 	thus DStress can't detect this bug directly. Instead the compiler
//	output is parsed for "Internal error"(dmd) and "gcc.gnu.org/bugs"(gdc/gcc)

static void dummy(...){
}

class Foo : Object{
	static this(){
		Foo.display_name();
	}

	void display_name(){
		dummy(super.classinfo.name);
	}
}
