// $HeadURL$
// $Date$
// $URL$

// union allocation at compiletime is impossible

// __DSTRESS_ELINE__ 16

module dstress.nocompile.const_07;

union MyUnion{
	int i;
	Object o;
}

const MyUnion* u = new MyUnion();

