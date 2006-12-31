// $HeadURL$
// $Date$
// $Author$

// @author@	<jarrett.billingsley@gmail.com>
// @date@	2006-06-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=222

// __DSTRESS_ELINE__ 18

module dstress.nocompile.b.bug_cod1_1656_G;

void f(){
}

int main(){
	int x;
	x = 1 && f();

	return 0;
}

