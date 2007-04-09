// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5690

module dstress.run.b.bug_cgcod_562_O2;

template test( T : T[] ){
	void test( T[] data ) {
		data[0] /= cast(cdouble)data.length;
	}
}

alias test!(cfloat[]) bug;

int main(){
	cfloat[2] array;
	array[0] = 2.0 + 0.0i;

	bug(array);
	array[0] -= 1.0;
	if(array[0].re < 0.0){
		array[0] *= -1;
	}

	if(array[0].re > float.epsilon * 4.0f){
		assert(0);
	}
	if(array[0].im > float.epsilon * 4.0f){
		assert(0);
	}

	return 0;
}

