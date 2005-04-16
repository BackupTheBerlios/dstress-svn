// $HeadURL$
// $Date$
// $Auhtor$

// __DSTRESS_ELINE__ 13

module dstress.nocompile.debug_05;

template T(){
	debug(A){
		static assert(0);
	}else{
		debug=A;
	}
}

void test(){
	mixin T!();
}
