// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 10

module dstress.nocompile.version_29;

version(A){
	static assert(0);
}else{
	version=A;
}
