module dstress.run.version_29;

int main(){
	version(all){
		return 0;
	}else{
		assert(0);
	}
}
		
