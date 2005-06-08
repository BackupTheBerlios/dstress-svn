// $HeadURL$
// $Date$
// $Author$

// @author@	ahiru <ahiru@1dk.jp>
// @date@	2005-03-01
// @uri@	news:d015pr$1t80$1@digitaldaemon.com

module dstress.run.typeid_85;

int main(){
	alias byte delegate(int) del;
	TypeInfo ti = typeid(del);
	assert(!(ti is null));
	assert(ti.tsize == del.sizeof);
	assert(ti.toString()=="byte delegate(int)");
	return 0;
}
