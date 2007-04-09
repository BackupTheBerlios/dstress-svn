// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-03-13
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6652

module dstress.run.m.mangleof_15_A;

int main(){
	const char [] s = (int).mangleof;

	static if( s.length > 2 && s[2] == 'x' ){
		assert(0);
	}

	return 0;
}

