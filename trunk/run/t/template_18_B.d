// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-14
// @uri@	news:dladdb$1vp4$1@digitaldaemon.com

module dstress.run.t.template_18_B;

template outside(alias s){
	const int outval = s.localval;
}

template test(alias f){
	template local(){
		const int localval = f.x;
	}
	
	const int val = outside!(local!()).outval;
}

template a(){
	const int x = 123;
}

int main(){
	static assert( test!( a!() ).val == 123);

	return 0;
}

