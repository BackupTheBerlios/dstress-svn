// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.s.scope_10_A;

int main(){
	scope(exit){
		return 0;
	}

	return 1;
}
