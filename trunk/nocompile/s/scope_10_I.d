// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 18

module dstress.nocompile.s.scope_10_I;

int main(){
	int i = 0;

label:
	while( i++ < 10){
		i++;
	}

	scope(exit){
		break label;
	}

	return 1;
}
