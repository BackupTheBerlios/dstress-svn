// $HeadURL$
// $Date$
// $Auhtor$

module dstress.nocompile.version_30;

template T(){
	version(A){
		static assert(0);
	}else{
		version=A;
	}
}

void test(){
	mixin T!();
}
