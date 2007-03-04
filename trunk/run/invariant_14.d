// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-10-22
// @uri@	news:clbr09$uc6$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2140

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_14;

class Parent{

	int x;

	this(){
		x=3;
	}
	
	invariant{
		assert(x>2);
	}
}

class Child : Parent{
}

class GrandChild : Child{

	this(){
		x=5;
	}

	invariant{
		assert(x>4);
	}
}

int main(){
	GrandChild gc = new GrandChild();
	return 0;
}
