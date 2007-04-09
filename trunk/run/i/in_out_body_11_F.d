// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.i.in_out_body_11_F;

int inBase;
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
		assert(0);
	}body{
		done++;
	}
}

int main(){
	Base b = new Derived();

	b.test(1);

	assert(done);
	assert(inBase == 1);

	return 0;
}
