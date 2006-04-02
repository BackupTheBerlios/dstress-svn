// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-10-28
// @uri@	news:djtk1c$22gs$1@digitaldaemon.com

module dstress.run.m.memory_management_04;

class C{
	double[] x;

	void func(){
		x.length=0;
		x.length=100;
	}
}

int main(){
	C o = new C;

	for(size_t i=0; i<2000; i++){
		o.func();
	}
	return 0;
}
