// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros	<brunodomedeiros+bugz@gmail.com>
// @date@	2007-04-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1143
// @desc@	[Issue 1143] Assertion failure: '0' on line 850 in 'template.c' - On specialization of IFTI template parameters.

module dstress.run.t.template_61_A;

void foo(T, U = T)(char[] data, T t){
}

int main(){
	foo("abc", 1);
	return 0;
}
