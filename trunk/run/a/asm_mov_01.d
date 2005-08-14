 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_mov_01;

int test(){
	asm{
		naked;
		mov EAX, 10;
    		ret;
	}
}

int main(){
	assert(test()==10);
        return 0;
}