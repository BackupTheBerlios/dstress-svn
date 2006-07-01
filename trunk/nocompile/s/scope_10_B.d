// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.s.scope_10_B;

class X{
}

void main(){
	scope(exit){
		throw new X();
	}
}
