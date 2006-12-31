// $HeadURL$
// $Date$
// $Author$

// @author@	Luís Marques <luismarques@gmail.com>
// @date@	2006-12-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=754
// @desc@	[Issue 754] hex strings crash DMD when reporting syntax errors

// __DSTRESS_ELINE__ 15

module dstress.nocompile.h.escape_hex_string_05_A;

void main(){
	x"EF BB BF";
	x"00 BB BF";
}
