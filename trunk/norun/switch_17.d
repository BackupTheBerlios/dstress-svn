// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.norun.switch_17;

int i;

static ~this(){
	switch(i){
		case 1: i++; break; // dummy
		
	}
}

int main(){
	return 0;
}