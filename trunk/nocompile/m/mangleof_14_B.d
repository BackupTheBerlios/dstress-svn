// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5773

// __DSTRESS_ELINE__ 18

module dstress.run.m.mangleof_14_B;

template a(char[] n){
	const char[] a = n;
}

template b(f) {
	const int b = a!(f.mangleof);
}

int main(){
	char[] c = b!(int[2]);

	if(c == "G2i"){
		return 0;
	}
}
