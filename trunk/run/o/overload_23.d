// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-05-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4081

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
	if(b.name != "base"){
		assert(0);
	}

	Derived d = new Derived;
	if(d.name != "derived"){
		assert(0);
	}

	Base bd = new Derived;
	if(bd.name != "base"){
		assert(0);
	}
	return 0;
}
