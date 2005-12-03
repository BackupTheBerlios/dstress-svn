// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 13

module dstress.norun.switch_18;

int i;

static this(){
	switch(i){
		case 1: i++; break; // dummy
		
	}
}

int main(){
	return 0;
}
