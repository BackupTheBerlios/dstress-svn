// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.s.scope_11_B;

class X{
}

void main(){
	scope(success){
		throw new X();
	}
}
