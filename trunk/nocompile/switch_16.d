// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.switch_16;

int main(){
	int i;
	switch(i){
		case 3:
			return 0;
		default:
			assert(0);
		default:
			assert(0);
	}
	return 0;
}
