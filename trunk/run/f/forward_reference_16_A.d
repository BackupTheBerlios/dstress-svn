// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.f.forward_reference_16_A;

class Outer{
	static class Inner{
	}
}

Outer.Inner test;

int main(){
	test = new Outer.Inner;
	assert(test);
	return 0;
}
