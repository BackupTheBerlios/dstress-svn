// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-08-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1278 
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1278

module dstress.run.template_03;

template Bar(Y){
	void Bar(Y param){
	}
}

template Foo(alias X){
	alias Bar!(typeof(X)) Foo;
}

int main(){
	float f = 1.2f;
	mixin Foo!(f);
	Foo(f);
	return 0;
}
