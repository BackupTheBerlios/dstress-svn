// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 12

module dstress.nocompile.g.get_01_C;

class C{
	int this[int index]{
		get{
			return index * 2;
		}
	}
}

