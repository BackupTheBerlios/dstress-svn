// $HeadURL$
// $Date$
// $Author$

// @author@	<godaves@yahoo.com>
// @date@	2006-03-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=74

module dstress.run.i.if_14_D;

int test(int i){
	int j = i * i;
	if(j)
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

