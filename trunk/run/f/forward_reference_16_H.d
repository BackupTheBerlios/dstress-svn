// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.run.f.forward_reference_16_H;

class Outer{
	static struct Inner{
	}
}

Outer.Inner test;

int main(){
	return 0;
}
