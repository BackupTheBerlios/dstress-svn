// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 10

module dstress.nocompile.debug_04;

debug(A){
	static assert(0);
}else{
	debug=A;
}
