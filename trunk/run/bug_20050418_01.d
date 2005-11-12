// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-04-18
// @uri@	news:d3rulu$bn9$1@digitaldaemon.com

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.bug_20050418_01;

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
