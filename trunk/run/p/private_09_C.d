// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-12-17
// @uri@	news:do2bam$2ab0$1@digitaldaemon.com

module dstress.run.p.private_09_C;

class Base {
	private int i;
}

class Derived(T) : Base{
	int test(){
		return i++;
	}
}

int main(){
	Derived!(char) d = new Derived!(char)();

	assert(d.test() == 0);
	
	if(d.test() == 1){
		return 0;
	}
}
