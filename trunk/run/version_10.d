// check that BigEndian and LittleEndian can't be defined at the same time

int main(){
	int status=0;

	assert(status==0);

	version(BigEndian){
		version=LittleEndian;
		version(LittleEndian){
			version(BigEndian){
				status++;
			}
		}
	}

	assert(status==0);

	version(LittleEndian){
		version=BigEndian;
		version(BigEndian){
			version(LittleEndian){
				status++;
			}
		}
	}

	assert(status==0);

	return 0;
}
