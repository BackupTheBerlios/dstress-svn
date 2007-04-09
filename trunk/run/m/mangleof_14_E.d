// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5773

module dstress.run.m.mangleof_14_E;

template a(char n){
	const char a = n;
}

template b(f) {
	const char b = a!(f.mangleof[2]);
}

int main(){
	char c = b!(int[2]);

	if(c == 'i'){
		return 0;
	}
}
