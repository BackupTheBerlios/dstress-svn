// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.static_if_01_B;

const int a = 2;
const int b = 3;

static if (a == b - 1){
	const int c = a + b;
}else{
	static assert(0);
}

int main(){
	if(c == 5){
		return 0;
	}
}
