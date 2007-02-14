// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-01-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=861
// @desc@	[Issue 861] Using two typedefs of an undefined name in a class in a different module with import cycles causes DMD to hang

module /*dstress.*/nocompile.i.import_18_A;

import /*dstress.*/nocompile.i.import_18_B;

typedef NONEXISTENT_NAME myTypedef;
