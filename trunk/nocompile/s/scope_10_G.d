// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 13

module dstress.nocompile.s.scope_10_G;

int main(){
	int i = 0;

	scope(exit){
		break label;
	}

label:
	while( i++ < 10){
		i++;
	}

	return 1;
}
