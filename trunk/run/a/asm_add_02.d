 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_add_02;

int test(int i){
	asm{
		naked;
		add	EAX, 1;
		ret;
	}
}

int main(){
	assert(test(1)==2);
	assert(test(2)==3);
	assert(test(3)==4);
        return 0;
}