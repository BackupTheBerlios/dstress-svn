// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5772

module dstress.run.b.bug_expression_525_C;

template t(char[] arg){
	const char [] t = arg;
}

const char [] s = t!("a"[0 .. 1]);

int main(){
	if(s == "a"){
		return 0;
	}
}
