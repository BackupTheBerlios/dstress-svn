module dstress.run.version_28;

int main(){
	version(all){
		return 0;
	}else{
		assert(0);
	}
}
		
