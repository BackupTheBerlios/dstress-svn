// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-05
// @uri@	news:d5cj56$mfp$1@digitaldaemon.com

module dstress.run.const_22_A;

int main(){
	const real d = -3.0L;
	int i = cast(int)d;
	assert(-3 == i);
	return 0;
}

