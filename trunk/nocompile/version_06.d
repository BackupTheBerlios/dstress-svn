module dstress.nocompile.version_06;

version = none; // none: _Never_ defined; used to just disable a section of code 

int main(){
	int check=0;
	
	version(none){
		check++;
	}

	assert(check==0);

	return 0;
}
