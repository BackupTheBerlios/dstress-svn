// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2006-12-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=683
// @desc@	[Issue 683] dmd segv, this ain't the same as bug 682

module dstress.run.b.bug_expression_775_A;

void a(char[] name, T...)(char[]name, T t){
}

int main(){
	a!("Adf"[], typeof("adf"))("Adf"[],"adf");
	return 0;
}
