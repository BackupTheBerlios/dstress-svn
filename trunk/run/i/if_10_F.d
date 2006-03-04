// $HeadURL$
// $Date$
// $Author$

module dstess.run.i.if_10_F;

int test(int i){
	if (i--)
		if (!i)
			return 4;
		return 5;
	return 6;
}

int main(){
	if(test(1) != 4){
		assert(0);
	}

	if(test(2) != 5){
		assert(0);
	}

	if(test(0) != 5){
		assert(0);
	}

	return 0;
}
