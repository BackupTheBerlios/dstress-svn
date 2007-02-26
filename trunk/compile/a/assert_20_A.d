// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <webmaster@villagersonline.com>
// @date@	2007-02-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=992
// @desc@	[Issue 992] CTFE Failure with static if

module dstress.compile.a.assert_20_A;

bool isWhitespace() {
	return true;
}

static assert(isWhitespace());
