// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-11-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5597

module dstress.run.v.variadic_argument_10_F;

int state;

class Bar{
	this(...){
	}
}

class Foo{
	void opAddAssign(Bar b){
		assert(b);
		state++;
	}
}

int main(){
	Foo f = new Foo;
	assert(state == 0);
	assert(f);
	
	f += new Bar(1, 0);

	assert(state == 1);
	assert(f);

	return 0;
}

