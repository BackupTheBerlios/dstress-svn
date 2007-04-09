// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.i.in_out_body_11_D;

int inDerived;
int done;

class Base{
	void test(int i)
	in{
		assert(0);
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
	Derived d = new Derived();

	d.test(1);

	assert(done);
	assert(inDerived == 1);

	return 0;
}
