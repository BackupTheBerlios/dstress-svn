// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-12
// @uri@	news:dq57on$6ee$1@digitaldaemon.com

module dstress.run.t.template_23_A;

template whale(char walrus){
	const char whale = walrus;
}

template dolphin(char[] fish){
	const char dolphin = whale!((fish[4]));
}

const char urchin = dolphin!("anenome");

int main(){
	static assert(urchin == 'o');
	return 0;
}
