// check that the compiler feature D_InlineAsm can't be set for a non-supporting compiler

int main(){
	int status=0;
	assert(status==0);

	version(D_InlineAsm){
	}else{
		version=D_InlineAsm;
		version(D_InlineAsm){
			status++;
		}
	}

	assert(status==0);
	return 0;
}
