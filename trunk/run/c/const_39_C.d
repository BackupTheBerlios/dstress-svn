// $HeadURL$
// $Date$
// $Author$

// @author@	Bradley Smith <digitalmars-com@baysmith.com>
// @date@	2006-09-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=389
// @desc@	[Issue 389] New: Cannot link to std.path.altsep

module dstress.run.c.const_39_C;

const dchar[0] array;

int main(){
	if(array.length != 0){
		assert(0);
	}
	return 0;
}
