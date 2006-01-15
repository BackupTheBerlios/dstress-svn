// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-12
// @uri@	news:dq56n3$5n7$1@digitaldaemon.com

module dstress.run.t.template_24_H;

template whale(char [] walrus){
	const char [] whale = walrus;
}

const char[] urchin = whale!("anenome"[0 .. 3]);

int main(){
	assert(urchin == "ane");
	return 0;
}

