// $HeadURL$
// $Date$
// $Author$

// @author@	<BCS@pathlink.com>
// @date@	2006-06-16
// @uri@	news:e6umde$2ok0$2@digitaldaemon.com

module dstress.run.s.switch_22_E;

int main(){
	int i = 3;
	
	switch(2){
		case 0:
			scope(failure) i--;
		
		default:
	}

	if(i != 3){
		assert(0);
	}

	return 0;
}
