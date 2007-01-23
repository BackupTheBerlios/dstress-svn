// $HeadURL$
// $Date$
// $Author$

// @author@	<BCS@pathlink.com>
// @date@	2006-06-16
// @uri@	news:e6umde$2ok0$2@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=729

module dstress.run.s.switch_22_A;

int main(){
	switch(2){
		int x;
		
		default:
			x = 1;
			if(x != 1){
				assert(0);
			}
	}

	return 0;
}
