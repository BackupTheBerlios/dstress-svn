// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5789

module dstress.run.l.length_08_E;

int main(){
	static assert("abc"[$-2] == 'b');
	return 0;
}

