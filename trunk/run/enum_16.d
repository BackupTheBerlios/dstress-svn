// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	news:d3srd1$11a7$1@digitaldaemon.com

module dstress.run.enum_16;

int main(){
	enum E{
		a=-1,
		b=-1,
		c=-3,
		d=-3
	}

	assert(E.min==-3);
	assert(E.max==-1);
	return 0;
}
