 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_and_01;

int test(int i){
	asm{
		mov	EAX, i;
		and	EAX, EAX;
		mov 	i, EAX;
	}
}

int main(){
	assert(test(7)==7);
	assert(test(0)==0);
        return 0;
}
