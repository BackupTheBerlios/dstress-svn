// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-08
// @uri@	news:d5lotd$29j1$1@digitaldaemon.com

module dstress.run.t.typeid_86_D;

int main(){
	assert(typeid(int function(float)) != typeid(int function(char)));
	assert(typeid(int function(float)) != typeid(byte function(float)));
	assert(typeid(byte function(byte)) != typeid(byte function(int)));
	assert(typeid(void function(int)) != typeid(int function(int)));
	assert(typeid(int function()) != typeid(int function(int)));

	return 0;
}
