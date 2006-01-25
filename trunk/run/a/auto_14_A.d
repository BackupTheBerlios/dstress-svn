// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-01-24
// @uri@	news:dr5uqg$2hn7$1@digitaldaemon.com

module dstress.run.a.auto_14_A;

bool hadDtor = false;

auto class MyClass{
	this(){
		throw new Exception("dummy");
	}

	~this(){
		hadDtor = true;
		throw new Exception("should never throw");
		
	}
}

int main(){
	try{
		auto MyClass c;
		c = new MyClass();
	}catch{
		if(!hadDtor){
			return 0;
		}else{
			assert(0);
		}
	}

	assert(0);
}
