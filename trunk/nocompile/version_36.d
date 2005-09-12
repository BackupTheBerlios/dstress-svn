// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.version_36;

version(A){
	static assert(0);
}else{
	version=A;
}
