// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-08-19
// @uri@	news:opsczziyi5a2sq9@digitalmars.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1407

// __DSTRESS_ELINE__ 22

module dstress.nocompile.cast_02;

enum Enum{
	a
}

int main(){
	bool[] b;
	Enum e;
	b = cast(bool[])
		(cast(bool*)e);
	return 0;
}
