// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-09-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=289
// @desc@	[Issue 289] New: Compiler allows (and crashes on) dynamic arrays of typedefs of "immediate"-function types

// __DSTRESS_ELINE__ 16

module dstress.nocompile.t.typedef_21_B;

typedef int ft(int);

ft[] x;
