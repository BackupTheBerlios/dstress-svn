// $HeadURL$
// $Date$
// $Author$

// @author@	Mike Parker <aldacron71@yahoo.com>
// @date@	2005-04-25
// @uri@	news:d4i19u$12td$1@digitaldaemon.com

module dstress.run.protected_01;

template T(){
	protected int x;
}

class MyClass{
	mixin T;
}

int main(){
	MyClass c=new MyClass;
	c.x = 1;
	return 0;
}

