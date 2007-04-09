// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2006-01-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6006

// __DSTRESS_ELINE__ 82

module dstress.norun.d.destructor_06;

int step;
int b_step;
int a_step;
int module_step;

class A{
	static this(){
		step++;
		a_step = step;
	}

	static ~this(){
		assert(step == a_step);
		a_step = 10;
		step--;
		if(step == 0){
			check();
		}
	}
}

static this(){
	step++;
	module_step = step;
}

static ~this(){
	assert(step == module_step);
	module_step = 10;
	step--;
	if(step == 0){
		check();
	}
}

class B{
	static this(){
		step++;
		b_step = step;
	}

	static ~this(){
		assert(step == b_step);
		b_step = 10;
		step--;
		if(step == 0){
			check();
		}
	}
}

int main(){
	return 0;
}

void check(){
	if(a_step != 10){
		assert(0);
	}

	if(b_step != 10){
		assert(0);
	}

	if(module_step != 10){
		assert(0);
	}

	// all destructors have been run in the reverse sequence of the constructors
	assert(0);
}
