// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5773

module dstress.run.m.mangleof_14_H;

int main(){
	char c = (int[2]).mangleof[$-1];

	if(c == 'i'){
		return 0;
	}
}
