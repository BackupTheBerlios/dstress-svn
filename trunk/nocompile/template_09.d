// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-13-13
// @uri@	news:cpk4vq$1m5a$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2546

module dstress.nocompile.template_09;

template T(){
	class T{
		static void foo() {
		}
	}
}

int main(){
	T!()foo;		// missing *DOT* !!
	return 0;
}
