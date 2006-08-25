// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-08-21
// @uri@	news:eccer4$2mda$1@digitaldaemon.com
// @desc@	[Issue 303] delegate in finally

module dstress.run.f.finally_11_A;

int func2( char[] msg ){
	return msg.length;
}

int func( char[] delegate() dg ){
	return func2( dg() );
}

int main(){
	try{
	}finally{
		if(func("some text") != "some text".length){
			assert(0);
		}
	}

	return 0;
}
