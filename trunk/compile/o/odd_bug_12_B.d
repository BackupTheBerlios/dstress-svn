// $HeadURL$
// $Date$
// $Author$

// @author@	<amaury.pouly@gmail.com>
// @date@	2006-12-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=782
// @desc@	[Issue 782] Dmd crash with template class, alias, inheritance and severals files

module /*dstress.*/compile.o.odd_bug_12_B;
import /*dstress.*/compile.o.odd_bug_12_A;

class MiddleClass : UpperClass{
}

class Generic(T) : MiddleClass{
	T m_value=0;
}

alias Generic!(byte) GenericByte;

