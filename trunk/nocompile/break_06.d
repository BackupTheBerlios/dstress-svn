// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.break_06;

int main(){
	int i=1;
outer:	switch(i){
		case 1:
inner:			switch(i){
				case 1:
					break blah;
				default:
					assert(0);
			}
		default:
			assert(0);
	}
	return 0;
blah:
	assert(0);
}
