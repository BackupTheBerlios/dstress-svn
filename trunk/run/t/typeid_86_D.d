// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-08
// @uri@	news:d5lotd$29j1$1@digitaldaemon.com

module dstress.run.t.typeid_86_D;

int main(){
	if(typeid(int function(float)) == typeid(int function(char))){
		assert(0);
	}
	if(typeid(int function(float)) == typeid(byte function(float))){
		assert(0);
	}
	if(typeid(byte function(byte)) == typeid(byte function(int))){
		assert(0);
	}
	if(typeid(void function(int)) == typeid(int function(int))){
		assert(0);
	}
	if(typeid(int function()) == typeid(int function(int))){
		assert(0);
	}

	return 0;
}
