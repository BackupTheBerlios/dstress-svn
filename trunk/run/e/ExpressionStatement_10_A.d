// $HeadURL$
// $Date$
// $Author$

module dstress.run.e.ExpressionStatement_10_A;

int main(){
	int x = 3;
	cast(void)(x + x);

	if(x != 3){
		assert(0);
	}

	return 0;
}
