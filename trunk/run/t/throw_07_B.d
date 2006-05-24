// $HeadURL$
// $Date$
// $Author$

// @author@	<mclysenk@mtu.edu>
// @date@	2006-05-11
// @uri@	news:e3u2au$2l0c$1@digitaldaemon.com

module dstress.run.t.throw_07_B;

int status;

class XException : Exception{
	this(char[] msg){
		super(msg);
	}
}

class Tester{
	this(void function() dg_){
		if(status++ != 0){
			assert(0);
		}
		dg = dg_;
	}
	
	void function() dg;
	
	void test() {
		if(status++ != 1){
			assert(0);
		}
		dg();

		assert(0);
	}
}

void foo(){
	try{
		if(status++ != 2){
			assert(0);
		}
		throw new XException("test2");

		assert(0);
	}catch(XException e){
		if(status++ != 3){
			assert(0);
		}
		throw e;
		assert(0);
	}finally{
		if(status++ != 4){
			assert(0);
		}
	}
	assert(0);
}

int main(){
	
	Tester t = new Tester(&foo);

	try{
		if(status++ != 5){
			assert(0);
		}
		t.test();
		assert(0);
	}catch(XException e){
		if(status++ != 6){
			assert(0);
		}
	}finally{
		if(status++ != 7){
			assert(0);
		}
	}

	if(status != 8){
		assert(0);
	}
	return 0;
}
