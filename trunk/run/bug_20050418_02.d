// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3684

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.bug_20050418_02;

class Buffer{
	uint limit;
	int position;

        invariant{
		assert (position <= limit);
	}
}

class Mapped : Buffer{
	this(){
	}
}

int main(){
	Buffer a = new Buffer();
	Mapped b = new Mapped();
	Buffer c = new Mapped();
	assert(a);
	assert(b);
	assert(c);
	return 0;
}
