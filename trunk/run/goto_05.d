// $HeadURL$
// $Date$
// $Author$

module dstress.run.goto_05;

int main(){
	int i=1;
	switch(i){
		case 2:
			return 0;
		case 1:
			switch(i){
				case 1:
					goto case 2;
				default:
					assert(0);
			}
		default:
			assert(0);
	}
}
