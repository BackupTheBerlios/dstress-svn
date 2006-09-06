// $HeadURL$
// $Date$
// $Author$

module dstess.run.f.foreach_33_C;

int main(){
	int sum = 0;
	char[] data = "\u0001\u0010\u0030";

	creal c = 1.0L + 2.0Li;

	foreach(x; data){
		static assert(typeid(typeof(x)) == typeid(char));
		sum += x;
	}

	if(sum != 0x41){
		assert(0);
	}

	return 0;
}
