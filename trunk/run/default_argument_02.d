// $HeadURL$
// $Date$
// $Author$

// @author@	Andy Friesen <andy@ikagames.com>
// @date@	2004-06-25
// @uri@	news:cbfp7c$2rcg$1@digitaldaemon.com

module dstress.run.default_argument_02;

class MyClass{
	static MyClass test(int i=0){
		return new MyClass();
	}
}

int main(){
	MyClass c;
	c = MyClass.test;

	return 0;
}
