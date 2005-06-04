// $HeadURL$
// $Date$
// $Author$

// @author@	ahiru <ahiru@1dk.jp>
// @date@	2005-03-01
// @uri@	news:d015pr$1t80$1@digitaldaemon.com

module dstress.run.typeid_84;

int main(){
	alias byte function(int) func;
	TypeInfo ti = typeid(func);
	assert(ti !== null);
	assert(ti.tsize == func.sizeof);
	assert(ti.toString() == "byte(int)*");
	return 0;
}
