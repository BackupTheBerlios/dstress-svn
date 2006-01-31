// $HeadURL$
// $Date$
// $Author$

// @author@	Garett Bass <garettbass@studiotekne.com>
// @date@	2006-01-19
// @uri@	news:dqoe1e$8f8$1@digitaldaemon.com

module dstress.run.c.const_29_B;

int status;

class Bar{
	this(){
		if(status == 2){
			status++;
		}else{
			assert(0);
		}
	}
}

class Foo{
	const Bar b;

	this(){
		if(status != 1){
			assert(0);
		}

		status++;
		b = new Bar;
	}

	this(int dummy){
		if(status != 0){
			assert(0);
		}
		
		status++;
		this();
	}
}

int main(){
	Foo f;

	f = new Foo(1);
	if(status == 3){
		return 0;
	}
}
