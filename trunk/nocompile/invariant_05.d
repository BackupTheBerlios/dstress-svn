// invariant is only allowed in classes (dmd-0.104 documentation)

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
