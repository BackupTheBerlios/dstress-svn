// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-07
// @uri@	news:dn6g16$2dj6$1@digitaldaemon.com

module dstress.run.l.length_08_E;

int main(){
	static assert("abc"[$-2] == 'b');
	return 0;
}

