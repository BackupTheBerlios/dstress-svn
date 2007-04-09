// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6003

module dstress.run.t.template_24_G;

template whale(char [] walrus){
	const char [] whale = walrus;
}

const char[] urchin = whale!("anenome"[0 .. 3]);

int main(){
	static assert(urchin == "ane");
	return 0;
}

