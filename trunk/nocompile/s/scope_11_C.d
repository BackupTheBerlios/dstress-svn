// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.s.scope_11_C;

int main(){
	scope(success){
		goto label;
	}
label:
	return 1;
}
