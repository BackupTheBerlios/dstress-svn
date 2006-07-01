// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 13

module dstress.nocompile.s.scope_10_F;

int main(){
	int i = 0;

	scope(exit){
		continue label;
	}

label:
	while( i++ < 10){
		i++;
	}

	return 1;
}
