// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 18

module dstress.nocompile.s.scope_11_H;

int main(){
	int i = 0;

label:
	while( i++ < 10){
		i++;
	}

	scope(success){
		continue label;
	}

	return 1;
}
