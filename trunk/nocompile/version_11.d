// $HeadURL$
// $Date$
// $Author$

// check that the compiler feature D_InlineAsm can't be set for a non-supporting compiler

module dstress.nocompile.version_11;

int status;

version(D_InlineAsm){
	static assert(0);
}else{
	version = D_InlineAsm;
	version(D_InlineAsm){
		static this(){
			status=1;
		}
	}
}
	
int main(){
	assert(status==0);
	return 0;
}
