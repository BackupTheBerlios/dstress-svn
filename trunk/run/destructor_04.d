// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2005-02-05
// @uri@	news:cu1m3r$13b4$1@digitaldaemon.com

module dstress.run.destructor_04;

class MyClass{
	this(){
		throw new Exception("dummy");
	}

	~this(){
		assert(0);
	}
}

int main(){
	MyClass c;

	bool caught=false;
	try{
		c = new MyClass();
	}catch{
		caught=true;	
	}
	
	assert(caught);

	return 0;
}
