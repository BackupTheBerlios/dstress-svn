// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3684

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.bug_20050418_01;

class Buffer{
	uint limit;
	int position;

        invariant(){
		if(position > limit){
			assert(0);
		}
	}
}

class Mapped : Buffer{
	this(){
	}

	~this(){
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
