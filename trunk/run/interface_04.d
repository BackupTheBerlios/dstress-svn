// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/interface_04.d,v 1.1 2004/08/23 17:18:35 th Exp $

// @author@	van eeshan <vanee@hotmail.com>
// @date@	2004-08-05
// @uri@	news://ces67k$rgj$1@digitaldaemon.com

int status;

interface Interface1{
	void one();
}

interface Interface2{
	void two();
}

interface Interface3 : Interface2, Interface1{
	void three();
}

class MyClass : Interface3{
	void one(){
		status=1;
	}
	void two(){
		status=20;
	}
	void three(){
		status=300;
	}
}

int main(){
	Interface3 i = new MyClass();
	assert(status==0);
	i.one();
	assert(status==1);
	i.two();
	assert(status==20);
	i.three();
	assert(status==300);
	return 0;
}
