// $HeadURL$
// $Date$
// $Author$

// @author@	Nick Sabalausky <z@a.a>
// @date@	2005-02-01
// @uri@	news:ctpknf$21se$1@digitaldaemon.com
// @uri@	nntp://news.digitmars.com/digitalmars.D.bugs

// name resolution happens before overload resolution

// __DSTRESS_ELINE__ 25

module dstress.nocompile.overload_14;

int status;

void check(int x){
	status++;
}

class MyClass{
	void test(){
		assert(status==0);
		check(0);
		assert(status==1);
		check();
		assert(status==3);
	}

	void check(){
		assert(status==1);
		status+=2;
	}
}

int main(){
	MyClass c = new MyClass();
	assert(status==0);
	c.test();
	assert(status==3);
	check(0);
	assert(status==4);
	return 0;
}
