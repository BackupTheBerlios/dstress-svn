// $HeadURL$
// $Date$
// $Author$

module dstress.compile.c.character_literal_01_A;

auto c = '\U00000070';

static assert(is(typeof(c) == dchar));
