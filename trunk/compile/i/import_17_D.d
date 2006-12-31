// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-07-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=258
// @desc@	[Issue 258] New: Undefined identifier error for circular import

module /*dstress.*/compile.i.import_17_D;
public import /*dstress.*/compile.i.import_17_F, /*dstress.*/compile.i.import_17_E;
