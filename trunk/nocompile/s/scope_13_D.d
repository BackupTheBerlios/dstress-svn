// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-06-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=199

// __DSTRESS_ELINE__ 20

module dstress.nocompile.s.scope_13_D;

void foo(){
label:	{}

	{
		int i;
	}

	i = 2;
}
