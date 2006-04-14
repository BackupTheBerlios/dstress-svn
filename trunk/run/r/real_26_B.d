// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-03-16
// @uri@	news:dvb6tk$1vc4$1@digitaldaemon.com

module dstress.run.r.real_26_B;

int main(){
	const float f = real.max;
	real r = f;

	if(r != r.infinity){
		assert(0);
	}

	return 0;
}
	

