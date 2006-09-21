// $HeadURL$
// $Date$
// $Author$

module dstress.compile.c.character_literal_01_B;

auto c = '\u0070';

static assert(is(typeof(c) == char));
