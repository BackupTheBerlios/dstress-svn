// $HeadURL$
// $Date$
// $Author$

// @author@	Aziz Köksal <aziz.kerim@gmail.com>
// @date@	2007-07-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1358

module dstress.compile.c.character_literal_02_A;

static assert(0x10FFFD == '\U0010FFFD');
