// $HeadURL$
// $Date$
// $Author$

// @author@	dennis luehring <dl.soluz@gmx.net>
// @date@	2005-10-26
// @uri@	news:djo1km$280i$1@digitaldaemon.com

module dstress.undefined.class_19_B;

class Outer{
	this(){
	}
	
	class Inner{
		this(){
		}
	}
}

int main(){
	Outer o = new Outer;
	Outer.Inner i = new o.Inner();
	assert(i);
	
	return 0;
}
