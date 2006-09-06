// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-08
// @uri@	news:d5lotd$29j1$1@digitaldaemon.com

module dstress.run.t.typeid_86_E;

int main(){
	if(typeid(int delegate(float)) == typeid(int delegate(char))){
		assert(0);
	}
	if(typeid(int delegate(float)) == typeid(byte delegate(float))){
		assert(0);
	}
	if(typeid(byte delegate(byte)) == typeid(byte delegate(int))){
		assert(0);
	}
	if(typeid(void delegate(int)) == typeid(int delegate(int))){
		assert(0);
	}
	if(typeid(int delegate()) == typeid(int delegate(int))){
		assert(0);
	}

	return 0;
}
