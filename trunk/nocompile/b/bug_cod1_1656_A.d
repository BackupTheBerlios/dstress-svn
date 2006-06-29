// $HeadURL$
// $Date$
// $Author$

// @author@	<jarrett.billingsley@gmail.com>
// @date@	2006-06-23
// @uri@	news:bug-222-3@http.d.puremagic.com/issues/

// __DSTRESS_ELINE__ 18

module dstress.nocompile.b.bug_cod1_1656_A;

void f(){
}

int main(){
	int x;
	x = 0 || f();

	return 0;
}

