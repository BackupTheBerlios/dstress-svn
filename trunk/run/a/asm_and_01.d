 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_and_01;

int test(int i){
	asm{
		and	EAX, EAX;
	}
}

int main(){
	assert(test(7)==7);
	assert(test(0)==0);
        return 0;
}