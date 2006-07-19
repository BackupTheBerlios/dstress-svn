// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-28
// @uri@	news:dmeulv$2542$1@digitaldaemon.com

module dstress.run.b.bug_cgcod_562_Q3;

template test( T : T[] ){
	void test( T[] data ) {
		data[0] /= cast(creal)data.length;
	}
}

alias test!(creal[]) bug;

int main(){
	creal[2] array;
	array[0] = 2.0L + 0.0Li;

	bug(array);
	array[0] -= 1.0L;
	if(array[0].re < 0.0L){
		array[0] *= -1.0L;
	}

	if(array[0].re > real.epsilon * 4.0L){
		assert(0);
	}
	if(array[0].im > real.epsilon * 4.0L){
		assert(0);
	}

	return 0;
}

