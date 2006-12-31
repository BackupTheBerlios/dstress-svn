// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-05-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=142

// __DSTRESS_ELINE__ 14

module dstress.nocompile.b.bug_template_610_B;

template A(alias T) {
	void A(T){
		T = 2;
	}
}

void main(){
	int i;
	A(i);
}

