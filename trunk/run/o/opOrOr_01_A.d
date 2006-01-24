// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-20
// @uri@	news:dqq9ko$1pqr$1@digitaldaemon.com

module dstress.run.o.opOrOr_01_A;

int main(){
	const int a = 1;

	static if(a < 0 || 10 < a){
		static assert(0);
	}else{
		static bool A = true;
	}

	const int b = -1;
	static if(b < 0 || 10 < b){
		static bool B = true;
	}else{
		static assert(0);
	}

	const int c = 11;
	static if(c < 0 || 10 < c){
		static bool C = true;
	}else{
		static assert(0);
	}

	if(A && B && C){
		return 0;
	}
}
