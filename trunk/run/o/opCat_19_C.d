// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6081

module dstress.run.o.opCat_19_C;

int main(){
	const char [] armadillo = "abc" ~ 'a';

	static if(armadillo == "abca"){
		return 0;
	}
}
