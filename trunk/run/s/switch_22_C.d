// $HeadURL$
// $Date$
// $Author$

// @author@	<BCS@pathlink.com>
// @date@	2006-06-16
// @uri@	news:e6umde$2ok0$2@digitaldaemon.com

module dstress.run.s.switch_22_C;

int main(){
	int i;
	
	switch(2){
		scope(success) i--;
		
		default:
	}

	if(i != -1){
		assert(0);
	}

	return 0;
}
