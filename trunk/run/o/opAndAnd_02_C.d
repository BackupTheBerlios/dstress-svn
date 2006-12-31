// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-05-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=160

module dstress.run.o.opAndAnd_02_C;

template dog(char [] bird){
	static if ((bird.length > 99) && (bird[1234] == 'b')){
		const int dog = 2;
	}else{
		const int dog = 3;
	}
}

const int pig = dog!("a");

int main(){
	if(pig != 3){
		assert(0);
	}
	return 0;
}
