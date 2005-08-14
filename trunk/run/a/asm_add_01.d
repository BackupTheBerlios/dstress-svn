 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_add_01;

int test(int i){
	asm{
		naked;
		add	EAX, EAX;
		ret;
	}
}

int main(){
	assert(test(1)==2);
	assert(test(2)==4);
	assert(test(3)==6);
        return 0;
}