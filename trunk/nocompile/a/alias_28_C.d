// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 17

module dstress.nocompile.a.alias_28_C;

struct A{
	int i;
}

alias A.i x;

void main(){
	A a;
	int i = a.x;
}
