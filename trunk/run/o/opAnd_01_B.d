// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6049

module dstress.run.o.opAnd_01_B;

int main(){
	bool A, B, C;

	int a = 1;

	if((0 < a) & (a < 10)){
		A = true;
	}else{
		assert(0);
	}

	int b = -1;
	if((0 < b) & (b < 10)){
		assert(0);
	}else{
		B = true;
	}

	int c = 11;
	if((0 < c) & (c < 10)){
		assert(0);
	}else{
		C = true;
	}

	if(A & B & C){
		return 0;
	}
}
