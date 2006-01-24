// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-20
// @uri@	news:dqq9ko$1pqr$1@digitaldaemon.com

module dstress.run.o.opAndAnd_01_A;

int main(){
	const int a = 1;

	static if(0 < a && a < 10){
		static bool A = true;
	}else{
		static assert(0);
	}

	const int b = -1;
	static if(0 < b && b < 10){
		static assert(0);
	}else{
		static bool B = true;
	}

	const int c = 11;
	static if(0 < c && c < 10){
		static assert(0);
	}else{
		static bool C = true;
	}

	if(A && B && C){
		return 0;
	}
}
