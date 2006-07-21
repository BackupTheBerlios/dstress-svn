// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-20
// @uri@	news:dqq9ko$1pqr$1@digitaldaemon.com

module dstress.run.o.opOrOr_01_B;

int main(){
	bool A, B, C;

	int a = 1;
	if(a < 0 || 10 < a){
		assert(0);
	}else{
		A = true;
	}

	int b = -1;
	if(b < 0 || 10 < b){
		B = true;
	}else{
		assert(0);
	}

	int c = 11;
	if(c < 0 || 10 < c){
		C = true;
	}else{
		assert(0);
	}

	if(A && B && C){
		return 0;
	}
}
