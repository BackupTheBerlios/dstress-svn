// $HeadURL$
// $Date$
// $Author$

module dstess.run.f.foreach_33_A;

int main(){
	int sum = 0;
	char[] data = "\u0001\u0010\u0030";

	char c = 0x20;

	foreach(c; data){
		sum += c;
	}

	if(sum != 0x41){
		assert(0);
	}
	
	return 0;
}
