// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.goto_06;

int main(){
	int i=1;
	switch(i){
		case 2:
			return 0;
		case 1:
			switch(i){
				case 1:
					goto case 3;
				default:
					assert(0);
			}
		default:
			assert(0);
	}

	switch(i){
		case 3:
			assert(0);
		default:
			assert(0);
	}
}
