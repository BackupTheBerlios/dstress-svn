// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-02-22
// @uri@	news:dthlsr$1t9a$1@digitaldaemon.com

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.assert_14_C;

template cat(){
	static if(1){
		static assert(0);
		const int cat = 3;
	}
}

static assert(cat!() == 3);

