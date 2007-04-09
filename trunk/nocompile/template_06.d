// $HeadURL$
// $Date$
// $Author$

// @author@	Patrick Down <Patrick_member@pathlink.com>
// @date@	2004-06-20
// @uri@	news:cb346n$1uk0$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=565

module dstress.nocompile.template_06;

template foo(Type, alias Func){
	int foo(Type t){
		return Func(t);
	}
}

template foo(Type){
	int foo(Type t){
		static int f(Type a){
			return a;
		}
		return foo!(Type, f)(t);
	}
}

int main(){
	foo!(int)(1);
	return 0;
}

