// $HeadURL$
// $Date$
// $Author$

// @author@	<digitalmars-com@baysmith.com>
// @date@	2006-10-26
// @uri@	news:bug-461-3@http.d.puremagic.com/issues/
// @desc@	[Issue 461] New: Constant not understood to be constant when circular module dependency exists.

module /*dstress.*/compile.c.const_40_D;

import /*dstress.*/compile.c.const_40_C;

char[A] s;
