// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-12
// @uri@	news:d3fgv1$1g8h$1@digitaldaemon.com

module dstress.run.float_25;

int main(){
	float a=0f;
	float i=1f;
	assert(i==1f);
	i=a/a;
	assert(i !<>= i.nan);
	return 0;
}

