
int main(){
	int cpu=0;
	
	version(X86){
		cpu++;
	}

	version(AMD64){
		cpu++;
	}

	assert(cpu==1);

	return 0;
}
