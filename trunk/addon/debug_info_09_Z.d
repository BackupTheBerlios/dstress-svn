// $HeadURL$
// $Date$
// $Author$

// @author@	<me@teqdruid.com>
// @date@	2006-06-18
// @uri@	news:bug-146-3@http.d.puremagic.com/bugzilla/

module /*dstress.*/addon.debug_info_09_Z;

template T(){
	void foo(){
		*(cast(char*)0) = 'a';
	}
}
