// $HeadURL$
// $Date$
// $Author$

module dstress.run.goto_03;

int main(){
	int i=1;
	switch(i){
		case 0:
			if(i==9){
				return 0;
			}
			assert(0);
		case 1:
			i=9;
			goto case 0;
			assert(0);
		case 2:
			assert(0);
		default:
			assert(0);
	}
}
