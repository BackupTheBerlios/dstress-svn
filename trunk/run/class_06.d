// @author@	heretic <heretic_member@pathlink.com>
// @date@	2004-07-09
// @uri@	news://ccl6ao$vd3$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:752

module dstress.run.class_06;

void func1(){
	class foo {
		public int a;
	}
}

void func2(){
	class foo {
		public int b;
	}

	foo bar = new foo();
	bar.b = 255;  // error no property 'b' for type 'foo'
}

int main(){
	func2();
	return 0;
}

