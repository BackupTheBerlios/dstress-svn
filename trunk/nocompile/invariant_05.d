// $HeadURL$
// $Date$
// $Author$

// invariant is only allowed in classes (dmd-0.104 documentation)

// __DSTRESS_ELINE__ 11

module dstress.nocompile.invariant_05;

invariant{
	assert(0);
}

int dummy;

static this(){
	dummy=4;
}

static ~this(){
	dummy++;
}
