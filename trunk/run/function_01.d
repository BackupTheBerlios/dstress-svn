// $HeadURL$
// $Date$
// $Author$

module dstress.run.function_01;

void test(){
	int function (int i) x = function int (int i){ return i++;};
	int function (int i) y = function int (int i){ return i--;};
}

int main(){
	test();
	return 0;
}
