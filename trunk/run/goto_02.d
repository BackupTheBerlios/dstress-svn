// $HeadURL$
// $Date$
// $Author$

module dstress.run.goto_02;

int main(){
	int i=1;
	switch(i){
		case 0:
			assert(0);
		case 1:
			goto case;
			assert(0);
		case -2:
			return 0;
		default:
			assert(0);
	}
}
