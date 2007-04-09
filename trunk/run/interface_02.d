// $HeadURL$
// $Date$
// $Author$

// @author@	van eeshan <vanee@hotmail.com>
// @date@	2004-08-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1262

module dstress.run.interface_02;

int status;

interface Interface1{
	void one();
}

interface Interface2{
	void two();
}

interface Interface3 : Interface1, Interface2{
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
