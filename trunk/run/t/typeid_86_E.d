// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-08
// @uri@	news:d5lotd$29j1$1@digitaldaemon.com

module dstress.run.t.typeid_86_E;

int main(){
	assert(typeid(int delegate(float)) != typeid(int delegate(char)));
	assert(typeid(int delegate(float)) != typeid(byte delegate(float)));
	assert(typeid(byte delegate(byte)) != typeid(byte delegate(int)));
	assert(typeid(void delegate(int)) != typeid(int delegate(int)));
	assert(typeid(int delegate()) != typeid(int delegate(int)));

	return 0;
}
