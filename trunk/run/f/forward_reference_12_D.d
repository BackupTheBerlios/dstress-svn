// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-05-31
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4183
// @desc@	nested types can't be forward referenced

module dstress.run.f.forward_reference_12_D;

class Outer{
	class Inner{
		int i;
	}
}

class Test{
	Outer.Inner s;

	this(){
		s = new Outer.Inner;
	}
}

int main(){
	Test t=new Test;
	assert(t.s.i==0);
	return 0;
}
