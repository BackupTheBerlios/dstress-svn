// @author@	Steward Gordon <smjg_1998@yahoo.com>
// @date@	2004-09-01

int status;

class Parent{
}

interface MyInterface{
	MyInterface test();
}

class Child : Parent, MyInterface{
	Child test(){
		status++;
		return null;
	}
}

int main(){
	Child bro = new Child();
	assert(status==0);
	Child sis = bro.test();
	assert(status==1);
	return 0;
}
