// $HeadURL$
// $Date$
// $Author$

// @author@	<godaves@yahoo.com>
// @date@	2006-03-26
// @uri@	news:bug-74-3@http.d.puremagic.com/bugzilla/

module dstress.run.i.if_14_A;

int test(int i){
	if(int j = i * i)
		return j;
	else
		return 10;
}

int main(){
	if(test(1) != 1){
		assert(0);
	}

	if(test(0) != 10){
		assert(0);
	}

	if(test(-3) != 9){
		assert(0);
	}

	return 0;
}

