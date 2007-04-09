// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5772

module dstress.run.b.bug_expression_525_D;

template t(){
	const char [] t = "hello";
}

const char [] s = t!();

int main(){
	if(s == "hello"){
		return 0;
	}
}
