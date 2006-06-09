// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-05-29
// @uri@	news:bug-160-3@http.d.puremagic.com/bugzilla/

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
