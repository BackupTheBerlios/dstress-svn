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
		
		if(status == 0){
			status--;
		}else{
			status = -100;
		}
	}
}

void test(){
	try{
		auto AutoClass ac = new AutoClass();
		ac.bad();
	}catch{
		if(status == -1){
			status = 20;
		}
	}

	if(status != 20){
		throw new Exception("dtor not called");
	}
}

int main(){
	assert(status == 0);

	test();
	
	if(status == 20){
		return 0;
	}
}
