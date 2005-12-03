// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-10-14
// @uri@	news:dionmt$afm$1@digitaldaemon.com

module dstress.undefined.class_19_A;

class Outer{
	this(){
	}
	
	class Inner{
		this(){
		}
		
		Inner foo(){
			return new Inner();
		}
	}
	
	Inner dummy(){
		Inner i = new Inner;
		return i.foo();
	}
}

int main(){
	Outer o = new Outer();
	Outer.Inner i = o.dummy();
	assert(i);
	return 0;
}