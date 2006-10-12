// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-10-09
// @uri@	news:bug-418-3@http.d.puremagic.com/issues/
// @desc@	[Issue 418] New: -version=X and -debug=X command line arguments are rejected if the identifier begins with a non-ASCI letter

// __DSTRESS_DFLAGS__ -version=ö本

module dstress.compile.v.version_39_A;

version(ö本){
	// OK
}else{
	static assert(0);
}
