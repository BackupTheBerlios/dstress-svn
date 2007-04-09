// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-13
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6018

module dstress.run.a.assert_12_B;

int main(){
	assert(0.9 + 3.5L == 0.9L + 3.5L);
	return 0;
}
