// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-05
// @uri@	news:d5cj56$mfp$1@digitaldaemon.com

module dstress.run.const_21_C;

int main(){
	const double d = 3.0;
	int i = cast(int)d;
	assert(3 == i);
	return 0;
}

