// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au> 
// @date@	2005-11-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5687

module dstress.run.t.template_class_15;

class C(int n){
	const int len = n;
}

int main(){
	const char [] string = "canary";
	static assert(string.length == C!(string.length).len);
	return 0;
}

