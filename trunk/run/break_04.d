// $HeadURL$
// $Date$
// $Author$

module dstress.run.break_04;

int main(){
	int i=1;
outer:	switch(i){
		case 1:
inner:			switch(i){
				case 1:
					break outer;
				default:
					assert(0);
			}
		default:
			assert(0);
	}
	return 0;
}
