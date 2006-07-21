// $HeadURL$
// $Date$
// $Author$

module dstess.run.f.foreach_33_E;

int main(){
	int sum = 0;
	int sumI = 0;

	char[] data = "\u0001\u0010\u0030\u0000";

	foreach(i,char c; data){
		sumI += i;
		sum += c;
	}

	if(sum != 0x41){
		assert(0);
	}

	if(sumI != 6){
		assert(0);
	}

	return 0;
}
