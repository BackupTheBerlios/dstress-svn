
// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11

auto class AutoClass{
	this(){
		throw new Exception("error msg");
	}
	~this(){
		assert(0);
	}
}

int main(){
	try{
		auto AutoClass ac = new AutoClass();
	}catch{
	}
	return 0;
}
