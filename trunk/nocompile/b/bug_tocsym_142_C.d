// $HeadURL$
// $Date$
// $Author$

// @desc@	tocsym.c:142: virtual Symbol* VarDeclaration::toSymbol(): Assertion `!needThis()' failed.
// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-10-24
// @uri@	news:dji2d3$acl$1@digitaldaemon.com

// __DSTRESS_ELINE__ 22

module dstress.nocompile.b.bug_tocsym_142_C;

class S{
	int i;
}

struct C{
	S s;

	static int bug(){
		return s.i;
	}
}
