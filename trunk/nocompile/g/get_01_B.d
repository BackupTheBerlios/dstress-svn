// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 15

module dstress.nocompile.g.get_01_B;

struct C{
	int i;

	int X{
		get{
			return i;
		}
	}
}

