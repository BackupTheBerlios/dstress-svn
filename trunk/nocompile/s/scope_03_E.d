// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 16

module dstress.nocompile.s.scope_03_E;


void main(){
	const int x = 2;

	{
		const int x = 3;
		
		static assert(.x);
	}
}
	
