// $HeadURL$
// $Date$
// $Auhtor$

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
