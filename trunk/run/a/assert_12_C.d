// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-13
// @uri@	news:dq7rhv$8ep$1@digitaldaemon.com

module dstress.run.a.assert_12_C;

int main(){
	bool b = (0.9 + 3.5L == 0.9L + 3.5L);
	assert(b);
	return 0;
}
