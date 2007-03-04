// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-10-22
// @uri@	news:clbr09$uc6$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2140

// invariants for Unions allowed since dmd-0.119

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_06;

int status;

union MyUnion{
	int i;
	
	void test(){
		i++;
	}	
	
	invariant{
		status++;
	}
}

int main(){
	MyUnion u;
	assert(status==0);
	u.test();
	assert(status==1);
	u.i=2;
	assert(status==2);
	assert(u);
	assert(status==3);
	return 0;
}
