
// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11

int status;

auto class AutoClass{
	~this(){
		assert(status==0);
		status--;
		throw new Exception("error msg");
	}
}

void test(){
	assert(status==0);
	auto AutoClass ac = new AutoClass();
}

int main(){
	try{
		test();
	}catch{
	}
	assert(status==-1);
	return 0;
}
