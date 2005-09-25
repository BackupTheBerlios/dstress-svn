// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander <csantander619@gmail.com>
// @date@	2005-09-23
// @uri@	news:dh20kq$1rhr$1@digitaldaemon.com
// @desc@	internal compiler error: in rawArray, at d/d-codegen.cc:981

module dstress.run.b.bug_d_codegen_981_A;

int main(){
	char [] bar="test";
	char [] foo;
        
	foo="<"~bar[0];
        
	assert(foo.length==2);
	assert(foo=="<t");
        
	return 0;
} 