// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 18

module dstress.nocompile.u.using_01_B;

class C{
	int i;
}

void main(){
	C c = new C();

	using(c){
		c.i++;	
	}
}
