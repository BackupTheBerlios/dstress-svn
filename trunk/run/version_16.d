// check that BigEndian and LittleEndian can't be defined at the same time
// see also version_10

module dstress.run.version_16;

int status;
version(LittleEndian){
	version=BigEndian;
	version(BigEndian){
		version(LittleEndian){
			static this(){
				status=1;
			}
		}
	}
}

int main(){
	assert(status==0);
	return 0;
}
