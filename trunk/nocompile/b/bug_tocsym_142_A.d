// $HeadURL$
// $Date$
// $Author$

// @desc@	tocsym.c:142: virtual Symbol* VarDeclaration::toSymbol(): Assertion `!needThis()' failed.
// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-10-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5190

// __DSTRESS_ELINE__ 22

module dstress.nocompile.b.bug_tocsym_142_A;

struct S{
	int i;
}

class C{
	S s;

	static int bug(){
		return s.i;
	}
}
