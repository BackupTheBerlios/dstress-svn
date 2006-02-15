// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 15

module dstress.nocompile.s.set_01_A;

class C{
	int i;

	int X{
		set{
			i = value;
		}
	}
}

