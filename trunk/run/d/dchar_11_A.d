// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2006-12-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=740
// @desc@	[Issue 740] dchar[].dup causes compiler segfault

module dstress.run.d.dchar_11_A;

int main(){
	dchar[] a = "-\U000000A1\U00000901\U0000FFEE\U00010000\U000FFFFD_";

	dchar[] b = a;

	return 0;
}
