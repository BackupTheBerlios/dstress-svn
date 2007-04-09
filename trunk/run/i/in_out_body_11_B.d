// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.i.in_out_body_11_B;

int inBase;
int inDerived;
int done;

class Base{
	void test(int i)
	in{
		inBase++;
	}body{
		assert(0);
	}
}

class Derived : Base{
	void test(int i)
	in{
		inDerived++;
	}body{
		done++;
	}
}

int main(){
	Base b = new Derived();

	b.test(1);

	assert(done);
	assert((inBase==1 && inDerived==0) || (inDerived==1 && inBase==0));

	return 0;
}
