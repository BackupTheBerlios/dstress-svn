
// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11

int status;

auto class AutoClass{
	this(){
		assert(status==0);
		status+=2;
	}
	~this(){
		assert(status==2);
		status--;
		throw new Exception("error msg");
	}
}

void check(){
	auto AutoClass ac = new AutoClass();
	throw new Exception("check error");
}

int main(){
	assert(status==0);
	try{
		check();
	}catch{
		assert(status==1);
		status-=5;
	}
	assert(status==-4);
	return 0;
}
