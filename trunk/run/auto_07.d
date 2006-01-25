// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-04-14
// @uri@	news:d3kvo3$3uf$1@digitaldaemon.com

module dstress.run.auto_07;

int status;

auto class Parent{
}

auto class Child : Parent{
	this(){
		assert(status==0);
		status=1;
	}    

	~this(){
		assert(status==1);
		status=2;
	}
}

void test(){
	auto Parent o = new Child();
	assert(status==1);
}

int main(){
	test();
	
	if(status==2){
		return 0;
	}

	assert(0);
}

