// $HeadURL$
// $Date$
// $Author$

module dstress.run.break_05;

int main(){
	int i=1;
outer:	switch(i){
		case 1:
inner:			switch(i){
				case 1:
					break inner;
				default:
					assert(0);
			}
			return 0;
		default:
			assert(0);
	}
	assert(0);
}
