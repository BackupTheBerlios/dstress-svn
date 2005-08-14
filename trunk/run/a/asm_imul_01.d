 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_imul_01;

int test(int i){
	asm{
		naked;
		imul EAX, EAX;
    		ret;
	}
}

int main(){
	assert(test(0) == 0);
	assert(test(1) == 1);
	assert(test(3) == 9);
	assert(test(-5) == 25);
        return 0;
}