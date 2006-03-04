// $HeadURL$
// $Date$
// $Author$

// Porting: C++

// __DSTRESS_ELINE__ 18

module dstess.nocompile.e.enum_45;

enum E{
	A = 1,
	B = 2
}

int test(E e){
	switch(e){
		case B:
			return 2;
		default:
			return 0;
	}
}

