// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 11

module dstress.norun.destructor_05;

static ~this(){
	assert(0);
}

int main(){
	return 0;
}
