// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 13

module dstress.nocompile.s.scope_11_F;

int main(){
	int i = 0;

	scope(success){
		continue label;
	}

label:
	while( i++ < 10){
		i++;
	}

	return 1;
}
