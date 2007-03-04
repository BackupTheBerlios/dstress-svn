// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-08-19
// @uri@	news:opsczziyi5a2sq9@digitalmars.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/1407

// __DSTRESS_ELINE__ 21

module dstress.nocompile.cast_01;

enum Enum{
	a
}

int test(Enum e){
	bool[] b;
	b = cast(bool[])
		(cast(bool*)e);
	return 0;
}

int main(){
	Enum e;
	return test(e);
}
