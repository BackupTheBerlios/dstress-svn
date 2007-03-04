// $HeadURL$
// $Date$
// $Author$

// @author@	Charlie <Charlie_member@pathlink.com>
// @date@	2004-07-17
// @uri@	news:casnln$1oe1$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/551

module dstress.run.nested_function_01;

void fn( out char[] buf ){
	void fn2(){
		assert(buf.length==0);
		assert(buf.sizeof==8);
	}
	fn2();
	assert(buf.length==0);
	assert(buf.sizeof==8);
}

int main(){
	char[] buf;
	assert(buf.length==0);
	assert(buf.sizeof==8);
	fn( buf );
	return 0;
}
