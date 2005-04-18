// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	news:d3srd1$11a7$1@digitaldaemon.com

module dstress.run.enum_14;

int main(){
	enum E{
		a=-1
	}

	assert(E.min==-1);
	assert(E.max==-1);
	return 0;
}
