// $HeadURL$
// $Date$
// $Author$

// Porting: C++

// __DSTRESS_ELINE__ 16

module dstress.nocompile.s.scope_04;

int x = 1;

void main(){
	int x = 2;

	::x = 3;
}
	
