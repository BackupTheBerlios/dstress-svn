// $HeadURL$
// $Date$
// $Author$

module dstress.run.version_04;

int main(){
	int cpu=0;
	
	version(X86){
		cpu++;
	}

	version(X86_64){
		cpu++;
	}

	version(IA64){
		cpu++;
	}

	version(PPC){
		cpu++;
	}

	version(Sparc){
		assert(0); // this isn't yet part of the standard (v0.111)
	}

	assert(cpu==1);

	return 0;
}
