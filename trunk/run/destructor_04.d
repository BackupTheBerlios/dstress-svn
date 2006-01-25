// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2005-02-05
// @uri@	news:cu1m3r$13b4$1@digitaldaemon.com

module dstress.run.destructor_04;

bool hadDtor = false;

class MyClass{
	this(){
		throw new Exception("dummy");
	}

	~this(){
		hadDtor = true;
		throw new Exception("should never throw");
		
	}
}

int main(){
	MyClass c;

	try{
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
