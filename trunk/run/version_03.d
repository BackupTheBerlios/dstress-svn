
int main(){
	int endian;
	
	version(LittleEndian){
		endian++;
	}
	
	version(BigEndian){
		endian++;
	}
	
	assert(endian == 1);
	
	return 0;
}
