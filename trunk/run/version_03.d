// $HeadURL$
// $Date$
// $Author$

module dstress.run.version_03;

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
