// $HeadURL$
// $Date$
// $Author$

// @author@	<lio@lunesu.com>
// @date@	2006-05-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=142

module dstress.run.b.bug_template_610_C;

template A(alias T) {
	void A(){
		T = 2;
	}
}

int i;

void main(){
	A!(i)();

	if(i != 2){
		assert(0);
	}
}

