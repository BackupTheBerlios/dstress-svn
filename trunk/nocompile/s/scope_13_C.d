// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-06-16
// @uri@	news:bug-199-3@http.d.puremagic.com/issues/

// __DSTRESS_ELINE__ 19

module dstress.nocompile.s.scope_13_C;

void foo(){
label: 
	{
		int i;
	}

	i = 2;
}
