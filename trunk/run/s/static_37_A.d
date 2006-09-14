// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander <csantander619@gmail.com>
// @date@	2006-07-09
// @uri@	news:e8sdrv$2k9c$1@digitaldaemon.com
// @desc@	name resolution and static function

module dstress.run.s.static_37_A;

class A{
	int foo (){
		return 1;
	}
	static int foo (int i){
		return i + 1;
	}
}

class B{
	int foo (int x){
		return A.foo(x) * 2;
	}
}

int main(){
	B b = new B();

	if(b.foo(2) != 6){
		assert(0);
	}

	return 0;
}
