// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-01-30
// @uri@	news:op.s36xvez5po9bzi@moe
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=711

module dstress.run.m.mixin_16_D;

int step;

template Mixer(){
	char test(){
		assert(0);
	}
}

class Foo{
	char test(){
		if(step == 2){
			step++;
			return 'F';
		}
	}
}

class FooBar : Foo{
	mixin Mixer;

	char test(){
		if(step == 1){
			step++;
			return super.test();
		}
	}
}

int main(){
	FooBar f = new FooBar;
	if(step == 0){
		step++;
		if(f.test() == 'F'){
			if(step == 3){
				return 0;
			}
			assert(0);
		}
		assert(0);
	}
}
