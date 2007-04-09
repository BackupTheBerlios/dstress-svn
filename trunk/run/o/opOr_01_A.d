// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6049

module dstress.run.o.opOr_01_A;

int main(){
	const int a = 1;

	static if((a < 0) | (10 < a)){
		static assert(0);
	}else{
		static bool A = true;
	}

	const int b = -1;
	static if((b < 0) | (10 < b)){
		static bool B = true;
	}else{
		static assert(0);
	}

	const int c = 11;
	static if((c < 0) | (10 < c)){
		static bool C = true;
	}else{
		static assert(0);
	}

	if(A && B && C){
		return 0;
	}
}
