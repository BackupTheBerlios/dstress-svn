// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Sauls <ibisbasenji@gmail.com>
// @date@	2005-12-10
// @uri@	news:dneava$evs$1@digitaldaemon.com

module dstress.run.a.auto_13_B;

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

int main () {
	if(status.length != 0){
		assert(0);
	}

	{
		auto Class c = new Class(1);
	}

	if(status.length != 2){
		assert(0);
	}
	if(status[0] != 1){
		assert(0);
	}
	if(status[1] != -1){
		assert(0);
	}

	{
		auto Class c = new Class(2);
	}

	if(status.length != 4){
		assert(0);
	}
	if(status[0] != 1){
		assert(0);
	}
	if(status[1] != -1){
		assert(0);
	}
	if(status[2] != 2){
		assert(0);
	}
	if(status[3] != -2){
		assert(0);
	}

	return 0;
}

