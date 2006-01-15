// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-12
// @uri@	news:dq56n3$5n7$1@digitaldaemon.com

module dstress.run.t.template_24_J;

template dolphin(char [] fish){
	const char [] dolphin = fish[0 .. 3];
}

const char[] urchin = dolphin!("anemone");

int main(){
	static assert(urchin == "ane");
	return 0;
}

