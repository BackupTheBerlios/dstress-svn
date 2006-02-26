// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-08-20
// @uri@	news:cg41gm$2u2d$1@digitaldaemon.com

module dstress.run.bool_05;

class MyClass{
	bool check;
}

int main(){
	MyClass c = new MyClass();
	c.check = 0 != 0;
	return 0;
}
