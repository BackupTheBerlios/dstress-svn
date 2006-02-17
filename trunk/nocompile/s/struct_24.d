// $HeadURL$
// $Date$
// $Author$

// Porting: C++

// __DSTRESS_ELINE__ 20

module dstress.nocompile.s.struct_24;

struct S{
	int i;	
}

void main(){
	S* s = new S();

	int x;

	x = s->i;
}
