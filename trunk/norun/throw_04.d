// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__

module dstress.norun.throw_04;

static ~this(){
	throw new Exception("Message\n");
}

int main(){
	return 0;
}