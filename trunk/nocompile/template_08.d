// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-12-13
// @uri@	news:cpk4vq$1m5a$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2546

// __DSTRESS_ELINE__ 18

module dstress.nocompile.template_08;

template T(){
	A a;
	class A {
		this() { 
			a = this; 
		} 
	}
}

int main(){
	mixin T!();
	return 0;
}
