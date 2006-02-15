// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 16

module dstress.nocompile.u.using_01_D;

class C{
	int i;
}

void main(){
	using(C c = new C()) c.i++;	
}
