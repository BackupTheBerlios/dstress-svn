// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-12
// @uri@	news:dq56n3$5n7$1@digitaldaemon.com

module dstress.run.t.template_24_B;

template whale(char [] walrus){
	const char [] whale = walrus;
}

template dolphin(char [] fish){
	const char [] dolphin = whale!(fish[0 .. (3)]);
}

const char[] urchin = dolphin!("anenome");

int main(){
	static assert(urchin == "ane");
	return 0;
}

