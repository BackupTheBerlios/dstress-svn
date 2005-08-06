// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.debug_04;

debug(A){
	static assert(0);
}else{
	debug=A;
}
