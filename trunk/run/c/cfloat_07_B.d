// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6425

module dstress.run.c.cfloat_07_B;

union S{
	float f;
	uint i;
}

int main(){
	cfloat a = 0.0f + 0.0fi;

	S s;

	s.f = a.re;
	if(s.i != 0x00000000){
		assert(0);
	}

	s.f = a.im;
	if(s.i != 0x00000000){
		assert(0);
	}

	return 0;
}
