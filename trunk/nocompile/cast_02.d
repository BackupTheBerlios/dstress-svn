// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-08-19
// @uri@	news:opsczziyi5a2sq9@digitalmars.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/1407

// __DSTRESS_ELINE__ 22

module dstress.nocompile.cast_02;

enum Enum{
	a
}

int main(){
	bit[] b;
	Enum e;
	b = cast(bit[])
		(cast(bit*)e);
	return 0;
}
