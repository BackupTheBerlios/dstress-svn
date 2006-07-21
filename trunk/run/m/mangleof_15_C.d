// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-03-13
// @uri@	news:dv3rrs$2m8i$1@digitaldaemon.com

module dstress.run.m.mangleof_15_C;

int main(){
	char [] s = (int*).mangleof;

	if( s.length > 2 && s[2] == 'x' ){
		assert(0);
	}

	return 0;
}

