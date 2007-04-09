// $HeadURL$
// $Date$
// $Author$

// @author@	xs0 <xs0@xs0.com>
// @date@	2005-08-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4752
// @desc@	offsetof doesn't work on method-local struct members

module dstress.run.o.offsetof_80_C;

struct Outer{
	int test(){
		struct Innner{
			int i;
		}

		return Innner.i.offsetof;
	}
}

int main(){
	Outer* o = new Outer;
	o.test();
	return 0;
}
