// @author@	larrycowan <larrycowan_member@pathlink.com>
// @date@	2004-11-04
// @uri@	news://cmd9i4$16g5$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D:12279

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
