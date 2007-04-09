// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-05-31
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4183
// @desc@	nested types can't be forward referenced

module dstress.run.f.forward_reference_12_A;

struct Outer{
	struct Inner{
		int i;
	}
}

struct Test{
	Outer.Inner s;
}

int main(){
	Test t;
	assert(t.s.i==0);
	return 0;
}
