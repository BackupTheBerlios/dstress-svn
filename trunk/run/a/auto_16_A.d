// $HeadURL$
// $Date$
// $Author$

// @author@	yama <yama_member@pathlink.com>
// @date@	2006-02-26
// @uri@	news:dtr1ms$2upj$1@digitaldaemon.com

module dstress.run.a.auto_16_A;

class C{
	char[] toString(){
		return "hallo bug";
	}
}

int main(){
	auto C c;
	version(all){
		c = new C();
	}

	if(c.toString() != "hallo bug"){
		assert(0);
	}

	return 0;
}



