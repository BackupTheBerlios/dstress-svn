// @author@	Steward Gordon <Steward_member@pathlink.com>
// @date@	2004-09-24
// @uri@	news://cj0qf6$2u2v$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1940

module dstress.compile.abstract_04;

int status;

abstract interface MyInterface{
	abstract int test()
		in{
			status++;
		};
}
