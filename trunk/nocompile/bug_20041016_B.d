// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-10-16
// @uri@	news:ckpj76$2r3m$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2117

module dstress.nocompile.bug_20041016_B;

int getch(){
	return 0;
}

void writefln(...){
}

class Cout{
	Cout set(int x){
		return this;
	}
	alias set opShl;
}

int main ( ){
	Cout cout = new Cout;
	cout << 5 << 4;
	writefln,getch;
	return 0;
}
