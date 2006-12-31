// $HeadURL$
// $Date$
// $Author$

// @author@	<digitalmars-com@baysmith.com>
// @date@	2006-10-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=461
// @desc@	[Issue 461] New: Constant not understood to be constant when circular module dependency exists.

module /*dstress.*/compile.c.const_40_B;

import /*dstress.*/compile.c.const_40_A;

char[A] s;
