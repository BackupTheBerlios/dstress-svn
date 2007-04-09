// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-02-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6168

// __DSTRESS_ELINE__ 17

module dstress.nocompile.c.const_30_F;

const int baboon = 3;
const uint monkey = 4;

void main(){
	const ape = monkey * baboon;
}
