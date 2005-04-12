// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-12
// @uri@	news:d3fgv1$1g8h$1@digitaldaemon.com

module dstress.run.float_26;

int main(){
	float i= 1f;
	assert(i==1f);
	i=0f / 0f;
	assert(i !<>= i.nan);
	return 0;
}

