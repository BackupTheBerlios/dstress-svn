// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	news:dr7m29$1ehs$1@digitaldaemon.com

module dstress.run.c.cast_31_B;

const char[] tapir = "sea";

const byte [] antelope = cast(byte []) tapir;

int main() {
	if(tapir.length != antelope.length){
		assert(0);
	}

	if(tapir[0] != antelope[0]){
		assert(0);
	}
	
	if(tapir[1] != antelope[1]){
		assert(0);
	}
	
	if(tapir[2] != antelope[2]){
		assert(0);
	}

	return 0;
}
