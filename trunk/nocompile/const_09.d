// $HeadURL$
// $Date$
// $URL$

// union allocation at compiletime is impossible

module dstress.nocompile.const_07;

union MyUnion{
	int i;
	Object o;
}

const MyUnion* u = new MyUnion();

