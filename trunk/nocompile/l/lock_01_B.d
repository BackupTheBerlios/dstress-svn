// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 15

module dstress.nocompile.l.lock_01_B;

class C{
	int i;
	
	void test(){
		lock(this){
			i++;
		}
	}
}
