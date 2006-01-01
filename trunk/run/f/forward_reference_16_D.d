// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.run.f.forward_reference_16_D;

struct Outer{
	static class Inner{
	}
}

Outer.Inner test;

int main(){
	test = new Outer.Inner;
	assert(test);
	return 0;
}
