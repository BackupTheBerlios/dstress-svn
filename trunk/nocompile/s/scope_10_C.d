// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.s.scope_10_C;

int main(){
	scope(exit){
		goto label;
	}
label:
	return 1;
}
