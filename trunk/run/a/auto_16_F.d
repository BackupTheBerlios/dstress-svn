// $HeadURL$
// $Date$
// $Author$

// @author@	yama <yama_member@pathlink.com>
// @date@	2006-02-26
// @uri@	news:dtr1ms$2upj$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -version=always

module dstress.run.a.auto_16_F;

class C{
	char[] toString(){
		return "hallo bug";
	}
}

int main(){
	version(always){
		auto C c;
		c = new C();
	}

	if((new C()).toString() != "hallo bug"){
		assert(0);
	}
	
	version(always){
		if(c.toString() != "hallo bug"){
			assert(0);
		}
	}

	return 0;
}



