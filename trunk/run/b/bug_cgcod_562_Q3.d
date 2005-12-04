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
	array[0] = 2.0;
	
	bug(array);
	array[0] -= 1.0;
	if(array[0].re < 0.0){
		array[0] *= -1;
	}
	
	assert(array[0].re < real.epsilon * 4.0);
	assert(array[0].im < real.epsilon * 4.0);
	
	return 0;
}

