// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-02-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6168

module dstress.run.c.const_30_E;

const int baboon = 3;
const int monkey = 4;

const ape = monkey * baboon;

int main(){
	static assert(ape == 12);
	return 0;
}
