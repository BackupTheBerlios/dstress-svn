// $HeadURL$
// $Date$
// $Author$

module dstress.compile.c.character_literal_01_C;

auto c = '\u0170';

static assert(is(typeof(c) == wchar));
