// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Sauls <ibisbasenji@gmail.com>
// @date@	2005-12-10
// @uri@	news:dneava$evs$1@digitaldaemon.com

module dstress.run.a.auto_13_A;

int[] status;

class Class {
	int id;
	
	this (int id) {
		this.id = id;
		status  ~= id;
	}

	~this () {
		status ~= -id;
	}
}

template Template (int id) {
	auto Class c = new Class(id);
}

int main () {
	assert(status.length == 0);

	{
		mixin Template!(1);
	}

	assert(status.length == 2);
	assert(status[0] ==  1);
	assert(status[1] == -1);

	{
		mixin Template!(2);
	}

	assert(status.length == 4);
	assert(status[0] ==  1);
	assert(status[1] == -1);
	assert(status[2] ==  2);
	assert(status[3] == -2);

	return 0;
}

