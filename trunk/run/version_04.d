
int main(){
	int cpu=0;
	
	version(X86){
		cpu++;
	}

	version(AMD64){
		cpu++;
	}

	version(IA64){
		cpu++;
	}

	version(PPC){
		cpu++;
	}

	assert(cpu==1);

	return 0;
}
