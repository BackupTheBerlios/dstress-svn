// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	news:dn488i$11kk$1@digitaldaemon.com

module dstress.run.m.mangleof_14_G;

int main(){
	char c = (int[2]).mangleof[2];

	if(c == 'i'){
		return 0;
	}
}
