// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 13

module dstress.nocompile.goto_04;

int main(){
	int i=1;
	switch(i){
		case 1:
			goto case 2;
		default:
			assert(0);
	}
}
