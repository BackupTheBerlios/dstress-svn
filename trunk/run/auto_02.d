// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11

module dstress.run.auto_02;

int status;

auto class AutoClass{
	void bad(){
		throw new Exception("error msg");
	}
	~this(){
		assert(status==0);
		status--;
	}
}

void test(){
	try{
		auto AutoClass ac = new AutoClass();
		ac.bad();
	}catch{
	}
}

int main(){
	assert(status==0);
	test();
	assert(status==-1);
	return 0;
}
