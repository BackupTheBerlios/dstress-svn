// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 16

module dstress.nocompile.a.alias_28_A;

struct A{
	int i;
}

alias A.i x;

void main(){
	int i = x;
}
