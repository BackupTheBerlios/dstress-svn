// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-09-01

module dstress.run.interface_06;

int status;

class Parent{
}

interface MyInterface{
	MyInterface test();
}

class Child : Parent, MyInterface{
	MyInterface test(){
		status++;
		return null;
	}
}

int main(){
	Child bro = new Child();
	assert(status==0);
	MyInterface sis = bro.test();
	assert(status==1);
	return 0;
}
