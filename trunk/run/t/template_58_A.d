// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-02-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=993
// @desc@	[Issue 993] No constant folding for template value default arguments

module dstress.run.t.template_58_A;

const int x = 7;

int a(int b = x * 2)(){
	return b + 1; 
}

int main() {
	if(15 != a()){
		assert(0);
	}
	return 0;
}
