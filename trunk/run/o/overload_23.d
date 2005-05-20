// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-05-20
// @uri@	news:d6jaj8$2r1n$1@digitaldaemon.com

module dstress.run.o.overload_23;

class Base{
	package char[] name(){
		return "base";
	}
}

class Derived:Base{
	package char[] name(){
                return "derived";
	}
}

int main(){
	Base b = new Base;
	assert(b.name=="base");

	Derived d = new Derived;
	assert(d.name=="derived");

	Base bd = new Derived;
	assert(bd.name=="derived");
	return 0;
}
