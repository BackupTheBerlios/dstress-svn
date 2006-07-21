// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2006-05-11
// @uri@	news:bug-135-3@http.d.puremagic.com/bugzilla/

module dstress.run.o.opCall_02_D;

class X{
	static int opCall(){
		return 3;
	}
}

int main(){
	X x;

	if(typeof(x).opCall() != 3){
		assert(0);
	}

	return 0;
}

