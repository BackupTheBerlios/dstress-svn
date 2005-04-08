// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin VR <azra@pandora.be>
// @date@	2005-04-07
// @uri@	news:d31ndi$amo$1@digitaldaemon.com

module dstress.run.private_04;

class Bar(Type){
	this(){
	}

	private int doSomething(){
		return 2;
	}
}

int main(){
	Bar!(int) b = new Bar!(int)();
	assert(2==b.doSomething());
	return 0;
}
