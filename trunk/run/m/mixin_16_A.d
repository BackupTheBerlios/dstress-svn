// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-01-30
// @uri@	news:op.s36xvez5po9bzi@moe

module dstress.run.m.mixin_16_A;

int step;

template Mixer(){
	char test(){
		if(step == 2){
			step++;
			return 'M';
		}
	}
}

class Foo{
	char test(){
		assert(0);
	}
}

class FooBar : Foo{
	mixin Mixer mixer;

	char test(){
		if(step == 1){
			step++;
			return mixer.test();
		}
	}
}

int main(){
	FooBar f = new FooBar;
	if(step == 0){
		step++;
		if(f.test() == 'M'){
			if(step == 3){
				return 0;
			}
			assert(0);
		}
		assert(0);
	}
}
