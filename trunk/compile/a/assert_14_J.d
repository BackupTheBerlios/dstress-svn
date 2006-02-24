// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-02-22
// @uri@	news:dthlsr$1t9a$1@digitaldaemon.com

module dstress.compile.a.assert_14_J;

template cat(uint x){
	static assert(x % 2);
	static if(1){
		static assert(x != 3);
		static if(1){
			static assert(x < 10);
			const int cat = 3;
		}
	}
}

static assert(cat!(5) == 3);

