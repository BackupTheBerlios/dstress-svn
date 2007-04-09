// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6079

module dstress.run.c.cast_31_A;

const char[] tapir = "sea";

const ubyte [] antelope = cast(ubyte []) tapir;

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
