// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-09-01

module dstress.run.interface_07;

int status;

class Parent{
}

interface MyInterface{
	Parent test();
}

class Child : Parent, MyInterface{
	Parent test(){
		status++;
		return null;
	}
}

int main(){
	Child bro = new Child();
	assert(status==0);
	Parent p = bro.test();
	assert(status==1);
	return 0;
}
