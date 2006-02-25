// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 16

module dstress.nocompile.s.scope_03_F;


void main(){
	int x = 2;

	{
		int x = 3;
		
		assert(.x);
	}
}
	
