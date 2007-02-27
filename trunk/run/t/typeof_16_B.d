// $HeadURL$
// $Date$
// $Author$

// @author@	Dan <ddaglas@gmail.com>
// @date@	2006-12-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=764
// @desc@	[Issue 764] (typeof(o)).classinfo causes parser error

module dstress.run.t.typeof_16_B;

int main() {
	Object o = new Object();
	char[] name = typeof(o).classinfo.name;

	if("object.Object" != name){
		assert(0);
	}
	return 0;
}
