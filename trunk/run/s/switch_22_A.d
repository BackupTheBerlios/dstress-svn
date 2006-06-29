// $HeadURL$
// $Date$
// $Author$

// @author@	<BCS@pathlink.com>
// @date@	2006-06-16
// @uri@	news:e6umde$2ok0$2@digitaldaemon.com

module dstress.run.s.switch_22_A;

int main(){
	switch(2){
		int x;
		x = 3;
		
		default:
			if(x++ != 4){
				assert(0);
			}
	}

	return 0;
}
