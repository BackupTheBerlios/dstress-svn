// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-10
// @uri@	news:d8btjq$11c7$1@digitaldaemon.com
// @desc@	compiler hangs on recursive template

// __DSTRESS_ELINE__ 15

module dstress.nocompile.t.template_class_09;

template Template(int i) {
	class Class : Template!(i+1).Class{
	}
}

alias Template!(0).Class Class0;

