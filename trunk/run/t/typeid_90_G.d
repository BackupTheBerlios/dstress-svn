// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-07-29
// @uri@	news:bug-271-3@http.d.puremagic.com/issues/
// @desc@	[Issue 271] Incorrect constant evaluation of TypeInfo equality comparisons

module dstress.run.t.typeid_90_G;

import std.stdio;

int main(char[][] args){
	if(typeid(typeof(typeid(int) == typeid(int))).toString()
		!= typeid(typeof(args[0].length == args.length)).toString())
	{
		assert(0);
	}

	return 0;
}
