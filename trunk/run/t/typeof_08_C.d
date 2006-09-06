// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2005-03-16
// @uri@	news:dvbst8$4ml$1@digitaldaemon.com

module dstress.run.t.typeof_08_C;

typeof("abc"w) y;

int main(){
	static if(!is(typeof(y) == wchar[3])){
		static assert(0);
	}

	if(y.length != 3){
		assert(0);
	}

	return 0;
}

