// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2004-10-22
// @uri@	news://clbr09$uc6$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2140

// invariant is only allowed in classes (dmd-0.104 documentation)

module dstress.nocompile.invariant_06;

union MyUnion{
	int i;
	
	void test(){
	}	
	
	invariant{
		assert(0);
	}
}

int main(){
	MyUnion u;
	u.test();
	return 0;
}
