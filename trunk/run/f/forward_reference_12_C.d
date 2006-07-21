// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-05-31
// @uri@	news:d7hfbd$1dtf$2@digitaldaemon.com
// @desc@	nested types can't be forward referenced

module dstress.run.f.forward_reference_12_C;

class Test{
	Outer.Inner s;

	this(){
		s = new Outer.Inner;
	}
}

class Outer{
	class Inner{
		int i;
	}
}

int main(){
	Test t=new Test;
	assert(t.s.i==0);
	return 0;
}
