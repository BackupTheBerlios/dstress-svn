// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.com>
// @date@	2007-02-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1054
// @desc@	[Issue 1054] Recursive templates with values, Error: T is used as a type

module dstress.compile.t.template_59_B;

template Bar(char[] T, int F ){
	const Bar = T[F];
}

static assert('s' == Bar!("asd",1) );
