// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6003

module dstress.run.t.template_24_J;

template dolphin(char [] fish){
	const char [] dolphin = fish[0 .. 3];
}

const char[] urchin = dolphin!("anemone");

int main(){
	static assert(urchin == "ane");
	return 0;
}

